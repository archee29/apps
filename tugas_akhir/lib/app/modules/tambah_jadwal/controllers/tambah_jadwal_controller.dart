import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TambahJadwalController extends GetxController {
  late TextEditingController makananController;
  late TextEditingController minumanController;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void tambahJadwal(String makanan, String minuman) async {
    CollectionReference jadwal = firestore.collection("Jadwal");
    try {
      String dateNow = DateTime.now().toIso8601String();
      await jadwal.add(
        {
          "makanan": int.parse(makanan),
          "minuman": int.parse(minuman),
          "time": dateNow,
        },
      );
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Menambahkan Jadwal Makaann",
        onConfirm: () {
          makananController.clear();
          minumanController.clear();
          Get.back();
          Get.back();
        },
        textConfirm: "OKE",
      );
    } catch (e) {
      print(e);
      Get.defaultDialog(
        title: "Terjadi Kesalahan",
        middleText: "Tidak Berhasil Menambah Jadwal",
      );
    }
  }

  @override
  void onInit() {
    makananController = TextEditingController();
    minumanController = TextEditingController();
    super.onInit();
  }

  @override
  void onClose() {
    makananController.dispose();
    minumanController.dispose();
    super.onClose();
  }
}
