import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

import '../controllers/detail_feeder_controller.dart';

class DetailFeederView extends GetView<DetailFeederController> {
  final Map<String, dynamic> feederData = Get.arguments;

  DetailFeederView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Feeder Detail',
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
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.secondaryExtraSoft, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Jadwal Pagi',
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          (feederData["masuk"] == null)
                              ? "-"
                              : DateFormat.jm().format(
                                  DateTime.parse(feederData["masuk"]["date"])),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      DateFormat.yMMMMEEEEd()
                          .format(DateTime.parse(feederData["date"])),
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                const Text(
                  'Status',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  (feederData["masuk"]?["in_area"] == true)
                      ? "in area feeder"
                      : "diluar area feeder",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                const Text(
                  'Alamat',
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 4),
                Text(
                  (feederData["masuk"] == null)
                      ? "-"
                      : "${feederData["masuk"]["alamat"]}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 150 / 100,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 24),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: AppColors.secondaryExtraSoft, width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Jadwal Sore",
                          style: TextStyle(
                            color: AppColors.secondary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          (feederData["keluar"] == null)
                              ? "-"
                              : DateFormat.jm().format(
                                  DateTime.parse(feederData["keluar"]["date"])),
                          style: TextStyle(
                            color: AppColors.secondary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      DateFormat.yMMMMEEEEd()
                          .format(DateTime.parse(feederData["date"])),
                      style:
                          TextStyle(color: AppColors.secondary, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Text(
                  "Status",
                  style: TextStyle(color: AppColors.secondary),
                ),
                const SizedBox(height: 4),
                Text(
                  (feederData["keluar"]?["in_area"] == true)
                      ? "in area feeder"
                      : "Outside Area Feeder",
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  'Alamat',
                  style: TextStyle(color: AppColors.secondary),
                ),
                const SizedBox(height: 4),
                Text(
                  (feederData["keluar"] == null)
                      ? "-"
                      : "${feederData["keluar"]["address"]}",
                  style: TextStyle(
                    color: AppColors.secondary,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 150 / 100,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
