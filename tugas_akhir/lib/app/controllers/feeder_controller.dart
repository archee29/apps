import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

class FeederController extends GetxController {
  RxBool isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  feeder() async {
    isLoading.value = true;
    Map<String, dynamic> determinePosition = await _determinePosition();
    if (!determinePosition["error"]) {
      Position posisi = determinePosition["posisi"];
      List<Placemark> placemarks =
          await placemarkFromCoordinates(posisi.latitude, posisi.longitude);
      String alamat =
          "${placemarks.first.street}, ${placemarks.first.subLocality}, ${placemarks.first.locality}";
      double distance = Geolocator.distanceBetween(
          DataPengguna.house['latitude'],
          DataPengguna.house['longtitude'],
          posisi.latitude,
          posisi.longitude);
      await updatePosisi(posisi, alamat);
      await processFeeder(posisi, alamat, distance);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      Get.snackbar("Terjadi Kesalahan", determinePosition["message"]);
      print(determinePosition["error"]);
    }
  }

  firstFeeder(
    CollectionReference<Map<String, dynamic>> feederCollection,
    String todayDocId,
    Position posisi,
    String alamat,
    double distance,
    bool in_area,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "title",
      message:
          "Konfirmasi Terlebih Dahulu \n Untuk Memberi makan dan Minum Sekarang",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).set(
          {
            "date": DateTime.now().toIso8601String(),
            "masuk": {
              "date": DateTime.now().toIso8601String(),
              "latitude": posisi.latitude,
              "longtitude": posisi.longitude,
              "alamat": alamat,
              "in_area": in_area,
              "distance": distance,
            }
          },
        );
        Get.back();
        CustomNotification.successNotification(
            "Success", "Tambah Feeder Berhasil");
      },
    );
  }

  morningFeeder(
    CollectionReference<Map<String, dynamic>> feederCollection,
    String todayDocId,
    Position posisi,
    String alamat,
    double distance,
    bool in_area,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "title",
      message:
          "Konfirmasi Terlebih Dahulu \n Untuk Melakukan Pengisian Tempat Makan dan Minum Kucing",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).set(
          {
            "date": DateTime.now().toIso8601String(),
            "masuk": {
              "date": DateTime.now().toIso8601String(),
              "latitude": posisi.latitude,
              "longtitude": posisi.longitude,
              "alamat": alamat,
              "in_area": in_area,
              "distance": distance,
            }
          },
        );
        Get.back();
        CustomNotification.successNotification(
            "Success", "Success memberikan makan dan minum di Jadwal Pagi");
      },
    );
  }

  afternoonFeeder(
    CollectionReference<Map<String, dynamic>> feederCollection,
    String todayDocId,
    Position posisi,
    String alamat,
    double distance,
    bool in_area,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "title",
      message:
          "Konfirmasi Terlebih dahulu\nUntuk Melakukan Pengisian Pakan di Sore Hari",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).update(
          {
            "keluar": {
              "date": DateTime.now().toIso8601String(),
              "latitude": posisi.latitude,
              "longtitude": posisi.longitude,
              "address": alamat,
              "in_area": in_area,
              "distance": distance,
            }
          },
        );
        Get.back();
        CustomNotification.successNotification(
          "Success",
          "Success Memberi Makan di Sore Hari",
        );
      },
    );
  }

  Future<void> processFeeder(
      Position posisi, String alamat, double distance) async {
    String uid = auth.currentUser!.uid;
    String todayDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    CollectionReference<Map<String, dynamic>> feederCollection =
        await firestore.collection("user").doc(uid).collection("feeder");
    QuerySnapshot<Map<String, dynamic>> snapshotPreference =
        await feederCollection.get();
    bool in_area = false;

    if (distance <= 200) {
      in_area = true;
    }
    if (snapshotPreference.docs.length == 0) {
      firstFeeder(
          feederCollection, todayDocId, posisi, alamat, distance, in_area);
    } else {
      DocumentSnapshot<Map<String, dynamic>> todayDoc =
          await feederCollection.doc(todayDocId).get();
      if (todayDoc.exists == true) {
        Map<String, dynamic>? dataFeederToday = todayDoc.data();
        if (dataFeederToday?["keluar"] != null) {
          CustomNotification.successNotification(
            "Success",
            "Sudah Melakukan Pengisian Tempat Makan",
          );
        } else {
          afternoonFeeder(
              feederCollection, todayDocId, posisi, alamat, distance, in_area);
        }
      } else {
        morningFeeder(
            feederCollection, todayDocId, posisi, alamat, distance, in_area);
      }
    }
  }

  Future<void> updatePosisi(Position posisi, String alamat) async {
    String uid = auth.currentUser!.uid;
    await firestore.collection("user").doc(uid).update(
      {
        "position": {
          "latitude": posisi.latitude,
          "longtitude": posisi.longitude,
        },
        "address": alamat,
      },
    );
  }

  Future<Map<String, dynamic>> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("location service are disabled.");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return {
          "message":
              "Tidak dapat mengakses lokasi, karena anda menolak permintaan akses lokasi",
          "error": true,
        };
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return {
        "message":
            "Akses Lokasi ditolak secara permanen oleh user, kami tidak dapat melakukan proses input lokasi",
        "error": true,
      };
    }
    Position posisi = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    return {
      "position": posisi,
      "message": "Berhasil Mendapatkan Posisi Device",
      "error": false,
    };
  }
}
