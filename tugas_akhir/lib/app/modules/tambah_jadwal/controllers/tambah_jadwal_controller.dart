import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class TambahJadwalController extends GetxController {
  @override
  onClose() {
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
  }

  TextEditingController idFeeder = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();
  late final DateTime selectedDate;

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateFeeder = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  void tambahJadwal(
      String title, String deskripsi, String makanan, String minuman) async {
    CollectionReference jadwal = firestore.collection("jadwal");
    try {
      await jadwal.add({
        "title": titleController,
        "deskripsi": deskripsiController,
        "makanan": makananController,
        "minuman": minumanController,
        "date": Timestamp.fromDate(selectedDate),
      });
    } catch (e) {
      CustomNotification.errorNotification(
          "Gagal", "Tambah Jadwal Tidak Berhasil");
    }
  }

  Future<void> addFeeder() async {
    if (idFeeder.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty &&
        makananController.text.isNotEmpty &&
        minumanController.text.isNotEmpty) {
      isLoading.value = true;
      CustomAlertDialog.showFeederAlert(title: "Konfirmasi Admin", message: "message", onConfirm: ()async{} , onCancel: ()=> Get.back(),)
    }
  }

  // void tambahJadwal(String makanan, String minuman) async {
  //   CollectionReference jadwal = firestore.collection("Jadwal");
  //   try {
  //     String dateNow = DateTime.now().toIso8601String();
  //     await jadwal.add(
  //       {
  //         "makanan": int.parse(makanan),
  //         "minuman": int.parse(minuman),
  //         "time": dateNow,
  //       },
  //     );
  //     Get.defaultDialog(
  //       title: "Berhasil",
  //       middleText: "Berhasil Menambahkan Jadwal Makaann",
  //       onConfirm: () {
  //         makananController.clear();
  //         minumanController.clear();
  //         Get.back();
  //         Get.back();
  //       },
  //       textConfirm: "OKE",
  //     );
  //   } catch (e) {
  //     // print(e);
  //     Get.defaultDialog(
  //       title: "Terjadi Kesalahan",
  //       middleText: "Tidak Berhasil Menambah Jadwal",
  //     );
  //   }
  // }

  // @override
  // void onInit() {
  //   makananController = TextEditingController();
  //   minumanController = TextEditingController();
  //   super.onInit();
  // }

  // @override
  // void onClose() {
  //   makananController.dispose();
  //   minumanController.dispose();
  //   super.onClose();
  // }
}
