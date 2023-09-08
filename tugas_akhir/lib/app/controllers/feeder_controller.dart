import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
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
      await prosesFeeder(posisi, alamat, distance);
      isLoading.value = false;
    } else {
      isLoading.value = false;
      Get.snackbar("Terjadi Kesalahan", determinePosition["message"]);
      print(determinePosition["error"]);
    }
  }

  firstFeeder()

  Future<Map<String, dynamic>> _determinePosition() async {}
}
