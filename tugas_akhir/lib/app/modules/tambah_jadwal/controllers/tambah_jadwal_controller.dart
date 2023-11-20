import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

class TambahJadwalController extends GetxController {
  @override
  onClose() {
    // idSchedule.dispose();
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
    adminPasswordController.dispose();
    dateController.dispose();
  }

  // TextEditingController idSchedule = TextEditingController();
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

  String getDefaultPassword() {
    return DataPengguna.defaultPassword;
  }

  schedule() async {
    isLoading.value = true;
    await processSchedule();
  }

  Future<void> createSchedule(
    CollectionReference<Map<String, dynamic>> scheduleCollection,
    String scheduleDocId,
  ) async {
    if (dateController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty &&
        makananController.text.isNotEmpty &&
        minumanController.text.isNotEmpty) {
      isLoading.value = true;
      CustomAlertDialog.showFeederAlert(
        title: "Tambah Jadwal",
        message: "Konfirmasi Terlebih Dahulu",
        onConfirm: () async {
          await scheduleCollection.doc(scheduleDocId).set({
            // "schedule_id": idSchedule,
            "date": dateController.text,
            "title": titleController.text,
            "deskripsi": deskripsiController.text,
            "makanan": makananController.text,
            "minuman": minumanController.text,
            "created_at": DateTime.now().toIso8601String(),
          });
          Get.back();
          CustomNotification.successNotification(
              "Sukses", "Tambah Jadwal Berhasil");
        },
        onCancel: () => Get.back(),
      );
    } else {
      isLoading.value = false;
      CustomNotification.errorNotification("Error", "Isi Form Terlebih Dahulu");
    }
  }

  Future<void> processSchedule() async {
    String uid = auth.currentUser!.uid;
    String scheduleDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    CollectionReference<Map<String, dynamic>> scheduleCollection =
        firestore.collection("user").doc(uid).collection("schedule");
    QuerySnapshot<Map<String, dynamic>> snapshotPreference =
        await scheduleCollection.get();
    if (snapshotPreference.docs.isEmpty) {
      createSchedule(scheduleCollection, scheduleDocId);
    } else {
      DocumentSnapshot<Map<String, dynamic>> scheduleDoc =
          await scheduleCollection.doc(scheduleDocId).get();
      if (scheduleDoc.exists == true) {
        Map<String, dynamic>? dateScheduleToday = scheduleDoc.data();
        if (dateScheduleToday?["schedule"] != null) {
          CustomNotification.successNotification(
              "Sukses", "Berhasil Menambahkan Jadwal");
        }
      }
    }
  }
}
