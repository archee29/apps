import 'dart:async';

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  RxString houseDistance = "-".obs;

  FirebaseAuth auth = FirebaseAuth.instance;
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Timer? timer;

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(Duration(seconds: 10), (timer) {
      if (Get.currentRoute == Routes.HOME) {
        getDistanceToHouse().then((value) {
          houseDistance.value = value;
        });
      }
    });
  }

  launchHouseOnMap() {
    try {
      MapsLauncher.launchCoordinates(
        DataPengguna.house['latitude'],
        DataPengguna.house['longtitude'],
      );
    } catch (e) {
      CustomNotification.errorNotification("Error", "Error:${e}");
    }
  }

  Future<String> getDistanceToHouse() async {
    print('called');
    Map<String, dynamic> determinePosition = await _determinePosition();
    if (!determinePosition["error"]) {
      Position posisi = determinePosition["position"];
      double distance = Geolocator.distanceBetween(
          DataPengguna.house['latitude'],
          DataPengguna.house['longtitude'],
          posisi.latitude,
          posisi.longitude);
      if (distance > 1000) {
        return "${(distance / 1000).toStringAsFixed(2)}km";
      } else {
        return "${distance.toStringAsFixed(2)}m";
      }
    } else {
      return "-";
    }
  }

  Future<Map<String, dynamic>> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      Get.rawSnackbar(
        title: 'GPS Mati',
        message: 'Mohon Hidupkan GPS',
        duration: Duration(seconds: 3),
      );
      return Future.error('Akses Lokasi dimatikan');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return {
          "message":
              "Tidak Dapat Mengakses karena anda menolak permintaan lokasi",
          "error": true,
        };
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return {
        "message":
            "Akses Lokasi Telah Dimatikan Secara Permanen, kami tidak dapat melakukan data lokasi anda",
        "error": true,
      };
    }
    Position posisi = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation);
    return {
      "positon": posisi,
      "message": "Berhasil mendapatkan posisi device",
      "error": false,
    };
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamUser() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore.collection("user").doc(uid).snapshots();
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamLastFeeder() async* {
    String uid = auth.currentUser!.uid;
    yield* firestore
        .collection("user")
        .doc(uid)
        .collection("feeder")
        .orderBy("date", descending: true)
        .limitToLast(5)
        .snapshots();
  }

  Stream<DocumentSnapshot<Map<String, dynamic>>> streamTodayFeeder() async* {
    String uid = auth.currentUser!.uid;
    String todayDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    yield* firestore
        .collection("user")
        .doc(uid)
        .collection("feeder")
        .doc(todayDocId)
        .snapshots();
  }
}
