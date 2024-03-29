import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class FeederTile extends StatelessWidget {
  final Map<String, dynamic> feederData;
  const FeederTile({super.key, required this.feederData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.DETAIL_FEEDER, arguments: feederData),
      borderRadius: BorderRadius.circular(8),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            width: 3,
            color: AppColors.primarySoft,
          ),
        ),
        padding:
            const EdgeInsets.only(left: 24, top: 20, right: 29, bottom: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Pagi",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        (feederData["masuk"] == null)
                            ? "-"
                            : DateFormat.jm().format(
                                DateTime.parse(feederData["masuk"]["date"])),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Sore",
                        style: TextStyle(fontSize: 12),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        (feederData["keluar"] == null)
                            ? "-"
                            : DateFormat.jm().format(
                                DateTime.parse(feederData["keluar"]["date"])),
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                DateFormat.yMMMMEEEEd()
                    .format(DateTime.parse(feederData["date"])),
                style: TextStyle(
                  fontSize: 10,
                  color: AppColors.secondarySoft,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
