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
      Position position = determinePosition["position"];
      List<Placemark> placemarks =
          await placemarkFromCoordinates(position.latitude, position.longitude);
      String alamat =
          "${placemarks.first.street}, ${placemarks.first.subLocality}, ${placemarks.first.locality}";
      double distance = Geolocator.distanceBetween(
          DataPengguna.house['latitude'],
          DataPengguna.house['longtitude'],
          position.latitude,
          position.longitude);
      await updatePosisi(position, alamat);
      await processFeeder(position, alamat, distance);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      Get.snackbar("Terjadi Kesalahan", determinePosition["message"]);
    }
  }

  firstFeeder(
    CollectionReference<Map<String, dynamic>> feederCollection,
    String todayDocId,
    Position position,
    String alamat,
    double distance,
    bool inArea,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "Add Feeder",
      message:
          "Konfirmasi Terlebih Dahulu \n Untuk Memberi makan dan Minum Sekarang",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).set(
          {
            "date": DateTime.now().toIso8601String(),
            "masuk": {
              "date": DateTime.now().toIso8601String(),
              "latitude": position.latitude,
              "longtitude": position.longitude,
              "alamat": alamat,
              "in_area": inArea,
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
    Position position,
    String alamat,
    double distance,
    bool inArea,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "Tambah Jadwal Pagi",
      message:
          "Konfirmasi Terlebih Dahulu \n Untuk Melakukan Pengisian Tempat Makan dan Minum Kucing",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).set(
          {
            "date": DateTime.now().toIso8601String(),
            "masuk": {
              "date": DateTime.now().toIso8601String(),
              "latitude": position.latitude,
              "longtitude": position.longitude,
              "alamat": alamat,
              "in_area": inArea,
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
    Position position,
    String alamat,
    double distance,
    bool inArea,
  ) async {
    CustomAlertDialog.showFeederAlert(
      title: "Tambah Jadwal Sore",
      message:
          "Konfirmasi Terlebih dahulu\nUntuk Melakukan Pengisian Pakan di Sore Hari",
      onCancel: () => Get.back(),
      onConfirm: () async {
        await feederCollection.doc(todayDocId).update(
          {
            "keluar": {
              "date": DateTime.now().toIso8601String(),
              "latitude": position.latitude,
              "longtitude": position.longitude,
              "address": alamat,
              "in_area": inArea,
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
      Position position, String alamat, double distance) async {
    String uid = auth.currentUser!.uid;
    String todayDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    CollectionReference<Map<String, dynamic>> feederCollection =
        firestore.collection("user").doc(uid).collection("feeder");
    QuerySnapshot<Map<String, dynamic>> snapshotPreference =
        await feederCollection.get();
    bool inArea = false;

    if (distance <= 200) {
      inArea = true;
    }
    if (snapshotPreference.docs.isEmpty) {
      firstFeeder(
          feederCollection, todayDocId, position, alamat, distance, inArea);
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
              feederCollection, todayDocId, position, alamat, distance, inArea);
        }
      } else {
        morningFeeder(
            feederCollection, todayDocId, position, alamat, distance, inArea);
      }
    }
  }

  Future<void> updatePosisi(Position position, String alamat) async {
    String uid = auth.currentUser!.uid;
    await firestore.collection("user").doc(uid).update(
      {
        "position": {
          "latitude": position.latitude,
          "longtitude": position.longitude,
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
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    return {
      "position": position,
      "message": "Berhasil Mendapatkan Posisi Device",
      "error": false,
    };
  }
}
