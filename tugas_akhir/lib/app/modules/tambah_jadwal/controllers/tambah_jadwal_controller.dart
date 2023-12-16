import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class TambahJadwalController extends GetxController {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;
  var selectedDate = DateTime.now().obs;
  Timestamp? scheduleDateTimeStamp;
  Timestamp? scheduleTimeStamp;
  var selectedTime = TimeOfDay.now().obs;

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
    // String todayDocId =
    //     DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    // DocumentReference<Map<String, dynamic>> schedule = firestore
    //     .collection("user")
    //     .doc(uid)
    //     .collection("schedule")
    //     .doc(todayDocId);
    CollectionReference<Map<String, dynamic>> schedule =
        firestore.collection("user").doc(uid).collection("schedule");
    try {
      isLoading.value = true;
      if (dateController.text.isNotEmpty &&
          timeController.text.isNotEmpty &&
          titleController.text.isNotEmpty &&
          deskripsiController.text.isNotEmpty &&
          makananController.text.isNotEmpty &&
          minumanController.text.isNotEmpty) {
        Map<String, dynamic> data = {
          "tanggal": dateController.text,
          "waktu": timeController.text,
          "title": titleController.text,
          "deskripsi": deskripsiController.text,
          "makanan": makananController.text,
          "minuman": minumanController.text,
          "created_at": DateTime.now().toIso8601String(),
        };
        await schedule.add(data);
        clearEditingControllers();
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

  @override
  onClose() {
    dateController.dispose();
    timeController.dispose();
    titleController.dispose();
    deskripsiController.dispose();
    makananController.dispose();
    minumanController.dispose();
  }

  void clearEditingControllers() {
    dateController.clear();
    timeController.clear();
    titleController.clear();
    deskripsiController.clear();
    makananController.clear();
    minumanController.clear();
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedDate.value,
      firstDate: DateTime.now().subtract(const Duration(days: 0)),
      lastDate: DateTime(2100),
      initialEntryMode: DatePickerEntryMode.input,
      helpText: 'Silahkan Masukkan Tanggal Makan dan Minum',
      cancelText: 'Cancel',
      confirmText: 'Ok',
      errorFormatText: 'Format Tangal Salah',
      errorInvalidText: 'Masukkan Format Tanggal (Bulan/Tanggal/Tahun)',
      fieldLabelText: 'Input Tanggal',
      fieldHintText: 'Bulan/Tanggal/Tahun',
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.black,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
            ),
          ),
          child: child!,
        );
      },
    );
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
      scheduleDateTimeStamp = Timestamp.fromMicrosecondsSinceEpoch(
          pickedDate.microsecondsSinceEpoch);
    }
  }

  chooseTime() async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: Get.context!,
      initialTime: selectedTime.value,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.primary,
              onPrimary: Colors.black,
              onSurface: Colors.black,
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(foregroundColor: AppColors.primary),
            ),
          ),
          child: child!,
        );
      },
      initialEntryMode: TimePickerEntryMode.input,
      helpText: 'Silahkan Masukkan Waktu Makan dan Minum',
      cancelText: 'Cancel',
      confirmText: 'Ok',
      errorInvalidText: 'Format Waktu Salah',
      hourLabelText: 'Jam',
      minuteLabelText: 'Menit',
    );
    if (pickedTime != null && pickedTime != selectedTime.value) {
      selectedTime.value = pickedTime;
      scheduleDateTimeStamp =
          Timestamp.fromMillisecondsSinceEpoch(pickedTime.hour);
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
