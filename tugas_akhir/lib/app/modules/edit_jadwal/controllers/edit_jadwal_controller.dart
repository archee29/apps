import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_alert_dialog.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';

class EditJadwalController extends GetxController {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();
  TextEditingController makananController = TextEditingController();
  TextEditingController minumanController = TextEditingController();

  RxBool isLoading = false.obs;
  RxBool isLoadingEditSchedule = false.obs;
  var selectedDate = DateTime.now().obs;
  var selectedTime = TimeOfDay.now().obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> updateSchedule() async {
    String uid = auth.currentUser!.uid;
    try {
      if (dateController.text.isNotEmpty &&
          timeController.text.isNotEmpty &&
          titleController.text.isNotEmpty &&
          deskripsiController.text.isNotEmpty &&
          makananController.text.isNotEmpty &&
          minumanController.text.isNotEmpty) {
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
        firestore
            .collection("user")
            .doc(uid)
            .collection("schedule")
            .get()
            .then((QuerySnapshot querySnapshot) {
          final docId = querySnapshot.docs.first.id;
          firestore
              .collection("user")
              .doc(uid)
              .collection("schedule")
              .doc(docId)
              .update(data);
        });
        Get.back();
        CustomNotification.successNotification(
            "Berhasil", "Berhasil Edit Schedule");
        clearEditingControllers();
      } else {
        isLoading.value = false;
        CustomNotification.errorNotification(
            "Error", "Isi Form Terlebih Dahulu");
      }
    } catch (e) {
      CustomNotification.errorNotification("Terjadi Kesalahan", "$e");
    }
  }

  void deleteDataFeeder() async {
    String uid = auth.currentUser!.uid;
    CustomAlertDialog.showFeederAlert(
      title: "Hapus Data",
      message: "Apakah Anda Yakin untuk menghapus data? ",
      onConfirm: () async {
        try {
          firestore
              .collection("user")
              .doc(uid)
              .collection("feeder")
              .get()
              .then((QuerySnapshot querySnapshot) {
            final docId = querySnapshot.docs.first.id;
            firestore
                .collection("user")
                .doc(uid)
                .collection("feeder")
                .doc(docId)
                .delete();
          });
          CustomNotification.successNotification(
              "Berhasil", "Menghapus Data Feeder");
          Get.back();
          Get.back();
        } catch (e) {
          CustomNotification.errorNotification("Terjadi Kesalahan", "$e");
        }
      },
      onCancel: () => Get.back(),
    );
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

      // dateController.text =
      //     DateFormat("dd-MM-yyyy").format(selectedDate.value).toString();
      // dateController.text = selectedDate.value.toString();
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
