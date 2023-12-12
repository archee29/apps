import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';
import 'package:tugas_akhir/app/widgets/feeder/schedule_widget.dart';

import '../controllers/edit_jadwal_controller.dart';

class EditJadwalView extends GetView<EditJadwalController> {
  const EditJadwalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: FutureBuilder<DocumentSnapshot<Object?>>(
        future: controller.getSchedule(Get.arguments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            controller.dateController.text = data["tanggal"];
            controller.titleController.text = data["title"];
            controller.deskripsiController.text = data["deskripsi"];
            controller.makananController.text = data["makanan"];
            controller.minumanController.text = data["minuman"];
            return ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(20),
              children: [
                // Calendar
                Card(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.all(8.0),
                  child: TableCalendar(
                    focusedDay: DateTime.now(),
                    firstDay: DateTime(1950),
                    lastDay: DateTime(2100),
                    headerStyle: HeaderStyle(
                      decoration: BoxDecoration(color: AppColors.primary),
                      headerMargin: const EdgeInsets.only(bottom: 8.0),
                      titleTextStyle: const TextStyle(color: Colors.white),
                      formatButtonDecoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      formatButtonTextStyle:
                          const TextStyle(color: Colors.white),
                      leftChevronIcon: const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      rightChevronIcon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                // Input Kalender
                CustomScheduleInput(
                  controller: controller.dateController,
                  label: "Kalendar",
                  hint: "Masukkan Jadwal Makan dan Minum",
                ),

                // Input Judul
                CustomInput(
                  controller: controller.titleController,
                  label: "Judul",
                  hint: "Edit Judul",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/judul.svg'),
                  ),
                ),
                // Input Deskripsi
                CustomInput(
                  controller: controller.deskripsiController,
                  label: "Deskripsi",
                  hint: "Edit Deskripsi",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/deskripsi.svg'),
                  ),
                ),
                // Input Makanan
                CustomInput(
                  controller: controller.makananController,
                  label: "Makanan",
                  hint: "Edit Jumlah Makanan",
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/makanan.svg'),
                  ),
                ),
                // Input Minuman
                CustomInput(
                  controller: controller.minumanController,
                  label: "Minuman",
                  hint: "Edit Jumlah Minuman",
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
                            side: const BorderSide(
                                width: 1, color: Color(0xFFFF39B0)),
                          ),
                          shadowColor: const Color(0x3F000000),
                        ),
                        icon:
                            SvgPicture.asset('assets/icons/cancel_button.svg'),
                        label: const Text(
                          "Cancel",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 9,
                            fontFamily: 'poppins',
                          ),
                        ),
                      ),
                    ),

                    // Edit Button
                    SizedBox(
                      width: 200,
                      height: 60,
                      child: Obx(
                        () => ElevatedButton.icon(
                          onPressed: () =>
                              controller.editProduct(Get.arguments),
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
                          icon:
                              SvgPicture.asset('assets/icons/edit_button.svg'),
                          label: Text(
                            (controller.isLoading.isFalse)
                                ? 'Edit Jadwal'
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
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}


// body: FutureBuilder<DocumentSnapshot<Object?>>(
//         future: controller.getData(Get.arguments),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.done) {
//             var data = snapshot.data!.data() as Map<String, dynamic>;
//             controller.makananController.text = data["makanan"];
//             controller.minumanController.text = data["minuman"];
//             return Padding(
//               padding: const EdgeInsets.all(20),
//               child: Column(
//                 children: [
//                   TextField(
//                     controller: controller.makananController,
//                     autocorrect: false,
//                     textInputAction: TextInputAction.next,
//                     decoration: const InputDecoration(
//                       labelText: "Makanan",
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   TextField(
//                     controller: controller.minumanController,
//                     textInputAction: TextInputAction.done,
//                     decoration: const InputDecoration(
//                       labelText: "Minuman",
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 30,
//                   ),
//                   ElevatedButton(
//                     onPressed: () => controller.editJadwal(
//                       controller.makananController.text,
//                       controller.minumanController.text,
//                       Get.arguments,
//                     ),
//                     child: const Text("Edit Jadwal"),
//                   ),
//                 ],
//               ),
//             );
//           }
//           return const Center(child: CircularProgressIndicator());
//         },
//       ),

