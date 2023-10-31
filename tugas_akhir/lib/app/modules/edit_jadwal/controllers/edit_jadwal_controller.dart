import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

class EditJadwalController extends GetxController {
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
            await editSchedule();
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

  editSchedule() async {
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

// class EditJadwalController extends GetxController {
//   late TextEditingController makananController;
//   late TextEditingController minumanController;

//   FirebaseFirestore firestore = FirebaseFirestore.instance;

//   Future<DocumentSnapshot<Object?>> getData(String docID) async {
//     DocumentReference docRef = firestore.collection("jadwal").doc(docID);
//     return docRef.get();
//   }

//   void editJadwal(String makanan, String minuman, String docID) async {
//     DocumentReference editJadwal = firestore.collection("Jadwal").doc(docID);
//     try {
//       await editJadwal.update(
//         {
//           "makanan": int.parse(makanan),
//           "minuman": int.parse(minuman),
//         },
//       );
//       Get.defaultDialog(
//         title: "Berhasil",
//         middleText: "Berhasil Mengubah data Jadwal Makaann",
//         onConfirm: () {
//           makananController.clear();
//           minumanController.clear();
//           Get.back();
//           Get.back();
//         },
//         textConfirm: "OKE",
//       );
//     } catch (e) {
//       // print(e);
//       Get.defaultDialog(
//         title: "Terjadi Kesalahan",
//         middleText: "Tidak Berhasil Mengubah Data Jadwal",
//       );
//     }
//   }

//   @override
//   void onInit() {
//     makananController = TextEditingController();
//     minumanController = TextEditingController();
//     super.onInit();
//   }

//   @override
//   void onClose() {
//     makananController.dispose();
//     minumanController.dispose();
//     super.onClose();
//   }
// }

