import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class IOTController extends GetxController {
  RxMap<String, dynamic> dataMorningFeeder = <String, dynamic>{}.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingCreateFeeder = false.obs;

  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  FirebaseDatabase morningFeederData = FirebaseDatabase.instance;

  // set data IOT
  Future<void> sendDataIOT(
    double tabungMakan,
    double wadahMakan,
    int tabungMinum,
    int wadahMinum,
    bool pump,
    bool servo,
    String timestamp,
  ) async {
    String uid = auth.currentUser!.uid;
    try {
      morningFeederData.ref('users').child(uid).child('jadwalPagi').set({
        'tabungMakan': tabungMakan,
        'wadahMakan': wadahMakan,
        'tabungMinum': tabungMinum,
        'wadahMinum': wadahMinum,
        'pump': pump,
        'servo': servo,
        'timestamp': timestamp
      });
    } catch (e) {
      CustomNotification.errorNotification("Error : ", "$e");
    }
  }

  // SET DATA MANUAL
  Future<void> sendDataManual() async {
    String uid = auth.currentUser!.uid;
    DatabaseReference dataManual =
        FirebaseDatabase.instance.ref('users').child(uid).child('dataManual');
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
        await dataManual.push().set(data);
        Get.back();
        Get.back();
        CustomNotification.successNotification(
            "Sukses", "Berhasil Menambahkan Data");
        clearEditingControllers();
        isLoadingCreateFeeder.value = false;
      } else {
        isLoading.value = false;
        CustomNotification.errorNotification(
            "Error", "Isi Form terlebih dahulu");
      }
    } catch (e) {
      CustomNotification.errorNotification("Error : ", "$e");
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

  // get data dari esp8266
  getMorningFeeder() async {
    String uid = auth.currentUser!.uid;
    DatabaseReference morningFeederRef =
        FirebaseDatabase.instance.ref('users').child(uid).child('jadwalPagi');
    DatabaseEvent reference = await FirebaseDatabase.instance
        .ref('users')
        .child(uid)
        .child('jadwalPagi')
        .once();
    Map<String, dynamic> updateMorningFeeder = {};
    dynamic snapshotValue = reference.snapshot.value;
    if (snapshotValue is Map<String, dynamic>) {
      Map<String, dynamic> mfData = snapshotValue;
      for (var entry in mfData.entries) {
        String jadwalPagi = entry.key;
        DataSnapshot mfData = await morningFeederRef.get();
        updateMorningFeeder[jadwalPagi] = mfData;
      }
    } else {
      CustomNotification.errorNotification("Error", "$e");
    }
    dataMorningFeeder = updateMorningFeeder.obs;
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
              background: Colors.white,
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
