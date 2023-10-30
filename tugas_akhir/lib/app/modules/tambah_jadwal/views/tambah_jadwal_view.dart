import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';

import '../controllers/tambah_jadwal_controller.dart';

class TambahJadwalView extends GetView<TambahJadwalController> {
  const TambahJadwalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Jadwal'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CustomInput(
              controller: controller.titleController,
              label: "Judul",
              hint: "Judul",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomInput(
              controller: controller.deskripsiController,
              label: "Deskripsi",
              hint: "Deskripsi",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomInput(
              controller: controller.makananController,
              label: "Makanan",
              hint: "Makanan",
            ),
            const SizedBox(
              height: 10,
            ),
            CustomInput(
              controller: controller.minumanController,
              label: "Minuman",
              hint: "Minuman",
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Obx(
                () => ElevatedButton(
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
                  child: Text(
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
      ),
    );
  }
}
