import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_schedule.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
          // Kalender
          // SizedBox(
          //   width: MediaQuery.of(context).size.width,
          //   child: ElevatedButton.icon(
          //     onPressed: () {
          //       Get.dialog(
          //         Dialog(
          //           child: SizedBox(
          //             height: 372,
          //             child: SfDateRangePicker(
          //               controller: controller.schedule(),
          //               headerHeight: 50,
          //               headerStyle: const DateRangePickerHeaderStyle(
          //                   textAlign: TextAlign.center),
          //               monthViewSettings:
          //                   const DateRangePickerMonthViewSettings(
          //                       firstDayOfWeek: 1),
          //               selectionMode: DateRangePickerSelectionMode.single,
          //               rangeSelectionColor: AppColors.primary,
          //               viewSpacing: 10,
          //               showActionButtons: true,
          //               onCancel: () => Get.back(),
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: AppColors.primary,
          //       padding: const EdgeInsets.symmetric(vertical: 18),
          //       elevation: 0,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(8),
          //         side: const BorderSide(width: 1, color: Colors.white),
          //       ),
          //       shadowColor: const Color(0x3F000000),
          //     ),
          //     icon: SvgPicture.asset('assets/icons/calendar.svg'),
          //     label: const Text(
          //       "Kalender",
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.w600,
          //         fontSize: 12,
          //         fontFamily: 'poppins',
          //       ),
          //     ),
          //   ),
          // ),

          CustomInput(
            controller: controller.dateController,
            label: "Masukkan Jadwal",
            hint: "Kalendar",
          ),

          // CustomSchedule(
          //   controller: controller.dateController,
          //   label: "Kalendar",
          //   hint: "Masukkan Data Kalendar",
          //   icon: SvgPicture.asset('assets/icons/calendar.svg'),
          // ),

          const SizedBox(height: 20),
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
            hint: "MasukkanDeskripsi",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/deskripsi.svg'),
            ),
          ),
          // Input Makanan
          CustomInput(
            controller: controller.makananController,
            label: "Makanan",
            hint: "Makanan",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/makanan.svg'),
            ),
          ),

          // Input Minuman
          CustomInput(
            controller: controller.minumanController,
            label: "Minuman",
            hint: "Minuman",
            suffixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/minuman.svg'),
            ),
          ),

          // Batas
          const SizedBox(height: 10),

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
                child: ElevatedButton.icon(
                  onPressed: () => controller.schedule(),
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
            ],
          ),
        ],
      ),
    );
  }
}
