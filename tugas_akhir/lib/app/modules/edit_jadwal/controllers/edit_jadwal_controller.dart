import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class EditJadwalController extends GetxController {
  @override
  onClose() {
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
    dateController.dispose();
  }

  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<DocumentSnapshot<Object?>> getSchedule(String docId) async {
    DocumentReference docRef = firestore.collection("schedule").doc(docId);
    return docRef.get();
  }

  void editProduct(String docId) async {
    DocumentReference docData = firestore.collection("schedule").doc(docId);
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
        await docData.update(data);
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
    }
  }
}


  // String getDefaultPassword() {
  //   return DataPengguna.defaultPassword;
  // }

  // scheduleEditForm() async {
  //   isLoading.value = true;
  //   await processEditSchedule();
  // }

  // Future<DocumentSnapshot<Object?>> getData(String scheduleDocId) async {
  //   DocumentReference documentReference =
  //       firestore.collection("schedule").doc(scheduleDocId);
  //   return documentReference.get();
  // }

  // Future<void> editSchedule(
  //   CollectionReference<Map<String, dynamic>> scheduleCollection,
  //   String scheduleDocId,
  // ) async {
  //   if (dateController.text.isNotEmpty &&
  //       titleController.text.isNotEmpty &&
  //       deskripsiController.text.isNotEmpty &&
  //       makananController.text.isNotEmpty &&
  //       minumanController.text.isNotEmpty) {
  //     isLoading.value = true;
  //     DocumentReference editSchedule =
  //         firestore.collection("schedule").doc(scheduleDocId);
  //     try {
  //       await editSchedule.update({
  //         "date": dateController,
  //         "title": titleController,
  //         "deskripsi": deskripsiController,
  //         "makanan": makananController,
  //         "minuman": minumanController,
  //         "created_at": DateTime.now().toIso8601String(),
  //       });
  //       Get.back();
  //       CustomNotification.successNotification(
  //           "Sukses", "Berhasil Mengedit Data");
  //     } catch (e) {
  //       CustomNotification.errorNotification(
  //           "Gagal", "Tidak Berhasil Mengedit Data : $e");
  //     }
  //   } else {
  //     CustomNotification.errorNotification("Error", "Isi Form Terlebih Dahulu");
  //   }
  // }

  // Future<void> processEditSchedule() async {
  //   String uid = auth.currentUser!.uid;
  //   String scheduleDocId =
  //       DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
  //   CollectionReference<Map<String, dynamic>> scheduleCollection =
  //       firestore.collection("user").doc(uid).collection("schedule");
  //   QuerySnapshot<Map<String, dynamic>> snapshotPreference =
  //       await scheduleCollection.get();
  //   if (snapshotPreference.docs.isEmpty) {
  //     editSchedule(scheduleCollection, scheduleDocId);
  //   } else {
  //     DocumentSnapshot<Map<String, dynamic>> scheduleDoc =
  //         await scheduleCollection.doc(scheduleDocId).get();
  //     if (scheduleDoc.exists == true) {
  //       Map<String, dynamic>? dateScheduleToday = scheduleDoc.data();
  //       if (dateScheduleToday?["schedule"] != null) {
  //         CustomNotification.successNotification(
  //             "Sukses", "Berhasil Edit Jadwal");
  //       }
  //     }
  //   }
  // }


// Future<void> addSchedule() async {
//     if (titleController.text.isNotEmpty &&
//         deskripsiController.text.isNotEmpty &&
//         makananController.text.isNotEmpty &&
//         minumanController.text.isNotEmpty) {
//       isLoading.value = true;
//       CustomAlertDialog.confirmAdmin(
//         title: "Konfirmasi Admin",
//         message:
//             "Konfirmasi Terlebih Dahulu \n Untuk Melakukan Pengisian Tempat Makan dan Minum Kucing",
//         onConfirm: () async {
//           if (isLoadingCreateSchedule.isFalse) {
//             // await editSchedule();
//             isLoading.value = false;
//           }
//         },
//         controller: adminPasswordController,
//         onCancel: () {
//           isLoading.value = false;
//           Get.back();
//         },
//       );
//     } else {
//       isLoading.value = false;
//       CustomNotification.errorNotification(
//           "Error", "Isi Form Tambah Jadwal Terlebih Dahul");
//     }
//   }

  // editSchedule() async {
  //   if (adminPasswordController.text.isNotEmpty) {
  //     isLoadingCreateSchedule.value = true;
  //     String adminEmail = auth.currentUser!.email!;
  //     try {
  //       await auth.signInWithEmailAndPassword(
  //           email: adminEmail, password: adminPasswordController.text);
  //       String defaultPassword = getDefaultPassword();
  //       UserCredential userCredential = defaultPassword as UserCredential;
  //       if (userCredential.user != null) {
  //         String uid = userCredential.user!.uid;
  //         DocumentReference schedule =
  //             firestore.collection("schedule").doc(uid);
  //         await schedule.update({
  //           "title": titleController.text,
  //           "deskripsi": deskripsiController.text,
  //           "makanan": makananController.text,
  //           "minuman": minumanController.text,
  //           "created_at": DateTime.now().toIso8601String()
  //         });
  //         await userCredential.user!.sendEmailVerification();
  //         Get.back();
  //         Get.back();
  //         CustomNotification.successNotification(
  //             "Sukses", "Berhasil Menambahkan Jadwal");
  //         isLoadingCreateSchedule.value = false;
  //       }
  //     } catch (e) {
  //       isLoadingCreateSchedule.value = false;
  //       CustomNotification.errorNotification(
  //           "Error", 'Error : ${e.toString()}');
  //     }
  //   } else {
  //     CustomNotification.errorNotification(
  //         "Error", "Masukkan Password Terlebih Dahulu");
  //   }
  // }

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

