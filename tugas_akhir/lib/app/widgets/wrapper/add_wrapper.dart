import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/modules/tambah_jadwal/controllers/tambah_jadwal_controller.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_schedule_input.dart';

import '../../routes/app_pages.dart';
import '../../styles/app_colors.dart';

class JadwalPagiForm extends GetView<TambahJadwalController> {
  const JadwalPagiForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      children: [
        // Kalender
        CustomScheduleInput(
          controller: controller.dateController,
          suffixIcon: const Icon(Icons.calendar_month_outlined),
          label: "Kalender",
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
          suffixIcon: const Icon(Icons.lock_clock_outlined),
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
          suffixIcon: const Icon(Icons.text_snippet_outlined),
          label: "Judul",
          hint: "Masukkan Judul",
        ),
        // Input Deskripsi
        CustomInput(
          controller: controller.deskripsiController,
          suffixIcon: const Icon(Icons.text_snippet_outlined),
          label: "Deskripsi",
          hint: "Masukkan Deskripsi",
        ),
        // Input Makanan
        CustomInput(
          controller: controller.makananController,
          suffixIcon: const Icon(Icons.fastfood_outlined),
          label: "Makanan",
          hint: "Masukkan Jumlah Makanan",
          keyboardType: TextInputType.number,
        ),
        // Input Minuman
        CustomInput(
          controller: controller.minumanController,
          suffixIcon: const Icon(Icons.fastfood_outlined),
          label: "Minuman",
          hint: "Masukkan Jumlah Minuman",
          keyboardType: TextInputType.number,
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
                    side: const BorderSide(width: 1, color: Color(0xFFFF39B0)),
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
            // Tambah Button
            SizedBox(
              width: 200,
              height: 60,
              child: Obx(
                () => ElevatedButton.icon(
                  onPressed: () {
                    if (controller.isLoading.isFalse) {
                      controller.addManualDataMF();
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
                  icon: SvgPicture.asset('assets/icons/tambah_button.svg'),
                  label: Text(
                    (controller.isLoading.isFalse)
                        ? 'Tambah Jadwal'
                        : 'Loading ...',
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class JadwalSoreForm extends GetView<TambahJadwalController> {
  const JadwalSoreForm({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.all(20),
      children: [
        // Kalender
        CustomScheduleInput(
          controller: controller.dateController,
          suffixIcon: const Icon(Icons.calendar_month_outlined),
          label: "Kalender",
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
          suffixIcon: const Icon(Icons.lock_clock_outlined),
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
          suffixIcon: const Icon(Icons.text_snippet_outlined),
          label: "Judul",
          hint: "Masukkan Judul",
        ),
        // Input Deskripsi
        CustomInput(
          controller: controller.deskripsiController,
          suffixIcon: const Icon(Icons.text_snippet_outlined),
          label: "Deskripsi",
          hint: "Masukkan Deskripsi",
        ),
        // Input Makanan
        CustomInput(
          controller: controller.makananController,
          suffixIcon: const Icon(Icons.fastfood_outlined),
          label: "Makanan",
          hint: "Masukkan Jumlah Makanan",
          keyboardType: TextInputType.number,
        ),
        // Input Minuman
        CustomInput(
          controller: controller.minumanController,
          suffixIcon: const Icon(Icons.fastfood_outlined),
          label: "Minuman",
          hint: "Masukkan Jumlah Minuman",
          keyboardType: TextInputType.number,
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
                    side: const BorderSide(width: 1, color: Color(0xFFFF39B0)),
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
            // Tambah Button
            SizedBox(
              width: 200,
              height: 60,
              child: Obx(
                () => ElevatedButton.icon(
                  onPressed: () {
                    if (controller.isLoading.isFalse) {
                      controller.addManualDataAF();
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
                  icon: SvgPicture.asset('assets/icons/tambah_button.svg'),
                  label: Text(
                    (controller.isLoading.isFalse)
                        ? 'Tambah Jadwal'
                        : 'Loading ...',
                    style: const TextStyle(
                      fontSize: 14,
                      fontFamily: 'poppins',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
