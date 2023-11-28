import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

class ScheduleTile extends StatelessWidget {
  final Map<String, dynamic> scheduleData;
  const ScheduleTile({super.key, required this.scheduleData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(Routes.EDIT_JADWAL, arguments: scheduleData),
    );
  }
}
