import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';
import 'package:tugas_akhir/app/widgets/feeder/schedule_widget.dart';
import '../controllers/tambah_jadwal_controller.dart';

class TambahJadwalView extends GetView<TambahJadwalController> {
  const TambahJadwalView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Tambah Jadwal',
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
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(20),
        children: [
          // Calendar
          // Card(
          //   clipBehavior: Clip.antiAlias,
          //   margin: const EdgeInsets.all(8.0),
          //   child: TableCalendar(
          //     focusedDay: DateTime.now(),
          //     firstDay: DateTime(1950),
          //     lastDay: DateTime(2100),
          //     headerStyle: HeaderStyle(
          //       decoration: BoxDecoration(color: AppColors.primary),
          //       headerMargin: const EdgeInsets.only(bottom: 8.0),
          //       titleTextStyle: const TextStyle(color: Colors.white),
          //       formatButtonDecoration: BoxDecoration(
          //         border: Border.all(color: Colors.white),
          //         borderRadius: BorderRadius.circular(8),
          //       ),
          //       formatButtonTextStyle: const TextStyle(color: Colors.white),
          //       leftChevronIcon: const Icon(
          //         Icons.chevron_left,
          //         color: Colors.white,
          //       ),
          //       rightChevronIcon: const Icon(
          //         Icons.chevron_right,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),
          // ),

          // Kalender
          CustomScheduleInput(
            controller: controller.dateController,
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
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/judul.svg'),
            ),
          ),
          // Input Deskripsi
          CustomInput(
            controller: controller.deskripsiController,
            label: "Deskripsi",
            hint: "Masukkan Deskripsi",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/deskripsi.svg'),
            ),
          ),
          // Input Makanan
          CustomInput(
            controller: controller.makananController,
            label: "Makanan",
            hint: "Masukkan Jumlah Makanan",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/makanan.svg'),
            ),
          ),
          // Input Minuman
          CustomInput(
            controller: controller.minumanController,
            label: "Minuman",
            hint: "Masukkan Jumlah Minuman",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/minuman.svg'),
            ),
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
              // Tambah Button
              SizedBox(
                width: 200,
                height: 60,
                child: Obx(
                  () => ElevatedButton.icon(
                    onPressed: () {
                      if (controller.isLoading.isFalse) {
                        controller.addSchedule();
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
