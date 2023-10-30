import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

class TambahJadwalController extends GetxController {
  @override
  onClose() {
    idSchedule.dispose();
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
    adminPasswordController.dispose();
  }

  TextEditingController idSchedule = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();
  TextEditingController adminPasswordController = TextEditingController();
  late final DateTime selectedDate;

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  String getDefaultPassword() {
    return DataPengguna.defaultPassword;
  }

  Future<void> addSchedule() async {
    if (idSchedule.text.isNotEmpty &&
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
            await createSchedule();
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

  createSchedule() async {
    if (adminPasswordController.text.isNotEmpty) {
      isLoadingCreateSchedule.value = true;
      String adminEmail = auth.currentUser!.email!;
      try {
        await auth.signInWithEmailAndPassword(
            email: adminEmail, password: adminPasswordController.text);
        String defaultPassword = getDefaultPassword();
        UserCredential userCredential = defaultPassword as UserCredential;
        if (userCredential.user != null) {
          String uid = userCredential.user!.uid;
          DocumentReference schedule =
              firestore.collection("schedule").doc(uid);
          await schedule.set({
            "id_schedule": idSchedule.text,
            "title": titleController.text,
            "deskripsi": deskripsiController.text,
            "makanan": makananController.text,
            "minuman": minumanController.text,
            "created_at": DateTime.now().toIso8601String()
          });
          await userCredential.user!.sendEmailVerification();
          Get.back();
          Get.back();
          CustomNotification.successNotification(
              "Sukses", "Berhasil Menambahkan Jadwal");
          isLoadingCreateSchedule.value = false;
        }
      } catch (e) {
        isLoadingCreateSchedule.value = false;
        CustomNotification.errorNotification(
            "Error", 'Error : ${e.toString()}');
      }
    } else {
      CustomNotification.errorNotification(
          "Error", "Masukkan Password Terlebih Dahulu");
    }
  }
}
