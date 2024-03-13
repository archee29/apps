import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class ScheduleController extends GetxController {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateSchedule = false.obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  addSchedule(
    CollectionReference<Map<String, dynamic>> scheduleCollection,
    String todayDocId,
  ) async {
    try {
      if (dateController.text.isNotEmpty &&
          timeController.text.isNotEmpty &&
          titleController.text.isNotEmpty &&
          deskripsiController.text.isNotEmpty &&
          makananController.text.isNotEmpty &&
          minumanController.text.isNotEmpty) {
        isLoading.value = true;
        Map<String, dynamic> data = {
          "date": DateTime.now().toIso8601String(),
          "tanggal": dateController.text,
          "waktu": timeController.text,
          "title": titleController.text,
          "deskripsi": deskripsiController.text,
          "makanan": makananController.text,
          "minuman": minumanController.text,
          "created_at": DateTime.now().toIso8601String(),
        };
        await scheduleCollection.doc(todayDocId).update(data);
        Get.back();
        Get.back();
        CustomNotification.successNotification(
            "Berhasil", "Berhasil Menambahkan Schedule");
        clearEditingControllers();
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

  editSchedule(
    CollectionReference<Map<String, dynamic>> scheduleCollection,
    String todayDocId,
  ) async {
    if (dateController.text.isNotEmpty &&
        timeController.text.isNotEmpty &&
        titleController.text.isNotEmpty &&
        deskripsiController.text.isNotEmpty &&
        makananController.text.isNotEmpty &&
        minumanController.text.isNotEmpty) {
      isLoading.value = true;
      try {
        Map<String, dynamic> data = {
          "date": DateTime.now().toIso8601String(),
          "tanggal": dateController.text,
          "waktu": timeController.text,
          "title": titleController.text,
          "deskripsi": deskripsiController.text,
          "makanan": makananController.text,
          "minuman": minumanController.text,
          "created_at": DateTime.now().toIso8601String(),
        };
        await scheduleCollection.doc(todayDocId).update(data);
        Get.back();
        CustomNotification.successNotification(
            "Berhasil", "Berhasil Edit Schedule");
        clearEditingControllers();
      } catch (e) {
        CustomNotification.errorNotification(
            "Error", "Tidak Dapat Update Profile. Error : ${e.toString()}");
      } finally {
        isLoading.value = false;
      }
    } else {
      isLoading.value = false;
      CustomNotification.errorNotification("Error", "Isi Form Terlebih Dahulu");
    }
  }

  Future<void> processSchedule() async {
    String uid = auth.currentUser!.uid;
    String todayDocId =
        DateFormat.yMd().format(DateTime.now()).replaceAll("/", "-");
    CollectionReference<Map<String, dynamic>> scheduleCollection =
        firestore.collection("user").doc(uid).collection("schedule");
    QuerySnapshot<Map<String, dynamic>> snapshotPreference =
        await scheduleCollection.get();
    if (snapshotPreference.docs.isEmpty) {
      addSchedule(scheduleCollection, todayDocId);
    } else {
      DocumentSnapshot<Map<String, dynamic>> todayDoc =
          await scheduleCollection.doc(todayDocId).get();
      if (todayDoc.exists == true) {
        Map<String, dynamic>? scheduleToday = todayDoc.data();
        if (scheduleToday?['schedule'] != null) {
          CustomNotification.successNotification(
              "Sukses", "Berhasil Edit Data");
        } else {
          editSchedule(scheduleCollection, todayDocId);
        }
      }
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
              onPrimary: Colors.white,
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
      dateController.text = DateFormat.yMd().format(selectedDate.value);
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
      String time, minute, hour;
      selectedTime.value = pickedTime;
      minute = selectedTime.value.minute.toString();
      hour = selectedTime.value.hour.toString();
      time = "$hour : $minute";
      timeController.text = time;
      timeController.text = formatDate(
          DateTime(selectedTime.value.hour, selectedTime.value.minute));
    }
  }

  formatDate(DateTime dateTime) async {
    DateTime(DateTime.now().hour, DateTime.now().minute);
  }
}