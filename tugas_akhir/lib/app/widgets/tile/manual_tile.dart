import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/modules/edit_jadwal/controllers/edit_jadwal_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

// ignore: must_be_immutable
class ManualTile extends StatelessWidget {
  final Map<String, dynamic> scheduleData;

  ManualTile({super.key, required this.scheduleData});

  EditJadwalController editJadwalController = Get.put(EditJadwalController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.DETAIL_JADWAL),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding:
                const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 16),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                width: 3,
                color: AppColors.primaryExtraSoft,
              ),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // Tanggal
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tanggal",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            (scheduleData["tanggal"] == null)
                                ? "-"
                                : (scheduleData["tanggal"]),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 24),
                      // Waktu
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Waktu",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            (scheduleData["waktu"] == null)
                                ? "-"
                                : (scheduleData["waktu"]),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 24),
                      // Makanan
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Makanan",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            (scheduleData["makanan"] == null)
                                ? "-"
                                : (scheduleData["makanan"]),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 24),
                      // Minuman
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Minuman",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            (scheduleData["minuman"] == null)
                                ? "-"
                                : (scheduleData["minuman"]),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // BUTTON DATA edit
              SizedBox(
                width: 140,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Get.toNamed(Routes.EDIT_JADWAL, arguments: scheduleData);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.success,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        side: BorderSide(
                          width: 3,
                          color: AppColors.primaryExtraSoft,
                        ),
                      )),
                  icon: SvgPicture.asset('assets/icons/icon-edit.svg'),
                  label: const Text(
                    "Edit",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'poppins',
                    ),
                  ),
                ),
              ),

              // BUTTON DATA delete
              SizedBox(
                width: 140,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: () {
                    editJadwalController.deleteDataFeeder();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.warning,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        width: 3,
                        color: AppColors.primaryExtraSoft,
                      ),
                    ),
                  ),
                  icon: SvgPicture.asset('assets/icons/icon-delete.svg'),
                  label: const Text(
                    "Delete",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
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
