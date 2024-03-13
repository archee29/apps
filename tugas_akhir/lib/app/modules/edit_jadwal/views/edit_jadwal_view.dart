import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_schedule_input.dart';

import '../controllers/edit_jadwal_controller.dart';

class EditJadwalView extends GetView<EditJadwalController> {
  final Map<String, dynamic> schedule = Get.arguments;

  EditJadwalView({super.key});

  @override
  Widget build(BuildContext context) {
    controller.dateController.text = schedule["tanggal"];
    controller.timeController.text = schedule["waktu"];
    controller.titleController.text = schedule["title"];
    controller.deskripsiController.text = schedule["deskripsi"];
    controller.makananController.text = schedule["makanan"];
    controller.minumanController.text = schedule["minuman"];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Jadwal',
          style: TextStyle(
            color: AppColors.secondary,
            fontSize: 14,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 1,
            color: AppColors.secondaryExtraSoft,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          // Kalender
          CustomScheduleInput(
            controller: controller.dateController,
            label: "Kalender",
            // hint: "${controller.selectedDate.value}",
            hint: DateFormat("dd-MM-yyyy")
                .format(controller.selectedDate.value)
                .toString(),
            onTap: () {
              controller.chooseDate();
            },
          ),

          // Time
          CustomScheduleInput(
            controller: controller.timeController,
            label: "Waktu",
            hint:
                "${controller.selectedTime.value.hour}:${controller.selectedTime.value.minute}",
            onTap: () {
              controller.chooseTime();
            },
          ),

          // Input Judul
          CustomInput(
            controller: controller.titleController,
            label: "Judul",
            hint: "Masukkan Judul",
          ),

          // Input Deskripsi
          CustomInput(
            controller: controller.deskripsiController,
            label: "Deskripsi",
            hint: "Masukkan Deskripsi",
          ),

          // Input makanan
          CustomInput(
            controller: controller.makananController,
            label: "Makanan",
            hint: "Masukkan Jumlah Makanan",
          ),

          // Input minuman
          CustomInput(
            controller: controller.minumanController,
            label: "Minuman",
            hint: "Masukkan Jumlah Minuman",
          ),

          const SizedBox(height: 20),
          // Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Cancel Button
              SizedBox(
                width: 120,
                height: 60,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.MAIN);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side:
                          const BorderSide(width: 1, color: Color(0xFFFF39B0)),
                    ),
                    shadowColor: const Color(0x3F000000),
                  ),
                  icon: SvgPicture.asset('assets/icons/cancel_button.svg'),
                  label: const Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
              ),

              // Edit Button
              Obx(
                () => SizedBox(
                  width: 200,
                  height: 60,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      if (controller.isLoading.isFalse) {
                        // controller.editSchedule();
                        controller.updateSchedule(Get.arguments);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: const BorderSide(
                          width: 1,
                          color: Colors.white,
                        ),
                      ),
                      shadowColor: const Color(0x3F000000),
                    ),
                    icon: SvgPicture.asset('assets/icons/edit_button.svg'),
                    label: Text(
                      (controller.isLoading.isFalse)
                          ? 'Edit Jadwal'
                          : 'Loading ...',
                      style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
