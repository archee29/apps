import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';

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

          // Input Judul
          Obx(
            () => CustomInput(
              controller: controller.titleController,
              label: "Judul",
              hint: "Masukkan Judul",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/judul.svg'),
              ),
            ),
          ),
          // Input Deskripsi
          Obx(
            () => CustomInput(
              controller: controller.deskripsiController,
              label: "Deskripsi",
              hint: "MasukkanDeskripsi",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/deskripsi.svg'),
              ),
            ),
          ),
          // Input Makanan
          Obx(
            () => CustomInput(
              controller: controller.makananController,
              label: "Makanan",
              hint: "Makanan",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/makanan.svg'),
              ),
            ),
          ),
          // Input Minuman
          Obx(
            () => CustomInput(
              controller: controller.minumanController,
              label: "Minuman",
              hint: "Minuman",
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/minuman.svg'),
              ),
            ),
          ),
          // Batas
          const SizedBox(
            height: 10,
          ),
          // Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Cancel Button
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Obx(
                  () => ElevatedButton.icon(
                    onPressed: () {
                      Get.toNamed(Routes.MAIN);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    icon: SvgPicture.asset('assets/icons/cancel.svg'),
                    label: const Text(
                      "Cancel",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ),
              ),
              // Tambah Button
              SizedBox(
                width: MediaQuery.of(context).size.width,
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
                      ),
                    ),
                    icon: SvgPicture.asset('assets/icons/tambah.svg'),
                    label: Text(
                      (controller.isLoading.isFalse)
                          ? 'Tambah Jadwal'
                          : 'Loading ...',
                      style: const TextStyle(
                        fontSize: 16,
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
