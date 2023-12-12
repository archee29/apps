import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class TambahJadwalController extends GetxController {
  @override
  onClose() {
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
    adminPasswordController.dispose();
    dateController.dispose();
  }

  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();
  TextEditingController adminPasswordController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  // String getDefaultPassword() {
  //   return DataPengguna.defaultPassword;
  // }

  // schedule() async {
  //   isLoading.value = true;
  //   processSchedule();
  // }

  // addSchedule(
  //   CollectionReference<Map<String, dynamic>> scheduleCollection,
  //   String scheduleDocId,
  // ) async {
  //   if (dateController.text.isNotEmpty &&
  //       titleController.text.isNotEmpty &&
  //       deskripsiController.text.isNotEmpty &&
  //       makananController.text.isNotEmpty &&
  //       minumanController.text.isNotEmpty) {
  //     isLoadingCreateSchedule.value = true;
  //     CustomAlertDialog.showFeederAlert(
  //       title: "Tambah Jadwal",
  //       message: "Konfirmasi Terlebih Dahulu",
  //       onConfirm: () async {
  //         await scheduleCollection.doc(scheduleDocId).set({
  //           // "schedule_id": idSchedule,
  //           "date": dateController.text,
  //           "title": titleController.text,
  //           "deskripsi": deskripsiController.text,
  //           "makanan": makananController.text,
  //           "minuman": minumanController.text,
  //           "created_at": DateTime.now().toIso8601String(),
  //         });
  //         Get.back();
  //         Get.back();
  //         CustomNotification.successNotification(
  //             "Sukses", "Tambah Jadwal Berhasil");
  //         isLoadingCreateSchedule.value = false;
  //       },
  //       onCancel: () => Get.back(),
  //     );
  //   } else {
  //     isLoading.value = false;
  //     CustomNotification.errorNotification("Error", "Isi Form Terlebih Dahulu");
  //   }
  // }

  Future<void> addSchedule() async {
    String uid = auth.currentUser!.uid;
    String todayDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    DocumentReference<Map<String, dynamic>> schedule = firestore
        .collection("user")
        .doc(uid)
        .collection("schedule")
        .doc(todayDocId);
    try {
      isLoading.value = true;
      if (dateController.text.isNotEmpty &&
          titleController.text.isNotEmpty &&
          deskripsiController.text.isNotEmpty &&
          makananController.text.isNotEmpty &&
          minumanController.text.isNotEmpty) {
        Map<String, dynamic> data = {
          "tanggal": dateController.text,
          "title": titleController.text,
          "deskripsi": deskripsiController.text,
          "makanan": makananController.text,
          "minuman": minumanController.text,
          "created_at": DateTime.now().toIso8601String(),
        };
        await schedule.set(data);
        Get.back();
        Get.back();
        CustomNotification.successNotification(
            "Berhasil", "Berhasil Menambahkan Schedule");
        isLoadingCreateSchedule.value = false;
      } else {
        isLoading.value = false;
        CustomNotification.errorNotification(
            "Error", "Isi Form Terlebih Dahulu");
      }
    } catch (e) {
      CustomNotification.errorNotification("Terjadi Kesalahan", "$e");
    } finally {
      update();
    }
  }

  // Future<void> processSchedule() async {
  //   String uid = auth.currentUser!.uid;
  //   String scheduleDocId =
  //       DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
  //   CollectionReference<Map<String, dynamic>> scheduleCollection =
  //       firestore.collection("user").doc(uid).collection("schedule");
  //   QuerySnapshot<Map<String, dynamic>> snapshotPreference =
  //       await scheduleCollection.get();
  //   if (snapshotPreference.docs.isEmpty) {
  //     addSchedule(scheduleCollection, scheduleDocId);
  //   } else {
  //     DocumentSnapshot<Map<String, dynamic>> scheduleDoc =
  //         await scheduleCollection.doc(scheduleDocId).get();
  //     if (scheduleDoc.exists == true) {
  //       Map<String, dynamic>? dateScheduleToday = scheduleDoc.data();
  //       if (dateScheduleToday?["schedule"] != null) {
  //         CustomNotification.successNotification(
  //             "Sukses", "Berhasil Menambahkan Jadwal");
  //       }
  //     }
  //   }
  // }
}
