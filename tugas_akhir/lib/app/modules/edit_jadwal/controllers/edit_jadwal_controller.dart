import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditJadwalController extends GetxController {
  late TextEditingController makananController;
  late TextEditingController minumanController;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<DocumentSnapshot<Object?>> getData(String docID) async {
    DocumentReference docRef = firestore.collection("jadwal").doc(docID);
    return docRef.get();
  }

  void editJadwal(String makanan, String minuman, String docID) async {
    DocumentReference editJadwal = firestore.collection("Jadwal").doc(docID);
    try {
      await editJadwal.update(
        {
          "makanan": makanan,
          "minuman": int.parse(minuman),
        },
      );
      Get.defaultDialog(
        title: "Berhasil",
        middleText: "Berhasil Mengubah data Jadwal Makaann",
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
        middleText: "Tidak Berhasil Mengubah Data Jadwal",
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
