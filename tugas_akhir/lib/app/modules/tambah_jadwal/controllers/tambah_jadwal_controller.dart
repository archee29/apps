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

  DateTime? picked;
  Timestamp? scheduledDateTimeStamp;

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  String getDefaultPassword() {
    return DataPengguna.defaultPassword;
  }

  pickDate() async {
    if (picked != null) {
      dateController.text =
          '${picked!.year} - ${picked!.month} - ${picked!.day}';
      scheduledDateTimeStamp =
          Timestamp.fromMicrosecondsSinceEpoch(picked!.microsecondsSinceEpoch);
    }
  }

  schedule() async {
    isLoading.value = true;
    await processSchedule();
  }

  createSchedule(int docId) async {
    DocumentReference<Map<String, dynamic>> schedule =
        firestore.collection("schedule").doc(docId.toString());
    await schedule.set({
      // "schedule_id": idSchedule,
      "date": dateController.text,
      "title": titleController.text,
      "deskripsi": deskripsiController.text,
      "makanan": makananController.text,
      "minuman": minumanController.text,
      "created_at": DateTime.now().toIso8601String(),
    });
  }

  Future<void> addSchedule() async {
    if (dateController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty &&
        makananController.text.isNotEmpty &&
        minumanController.text.isNotEmpty) {
      isLoading.value = true;
      CustomAlertDialog.confirmAdmin(
        title: "Konfirmasi Admin",
        message:
            "Konfirmasi Terlebih Dahulu \n Untuk Melakukan Pengisian Tempat Makan dan Minum Kucing",
        onConfirm: () async {
          if (isLoadingCreateSchedule.isFalse) {
            await processSchedule();
            isLoading.value = false;
          }
        },
        controller: adminPasswordController,
        onCancel: () {
          isLoading.value = false;
          Get.back();
        },
      );
    } else {
      isLoading.value = false;
      CustomNotification.errorNotification(
          "Error", "Isi Form Tambah Jadwal Terlebih Dahul");
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
      addSchedule();
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
