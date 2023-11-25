import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import '../controllers/detail_jadwal_controller.dart';

class DetailJadwalView extends GetView<DetailJadwalController> {
  DetailJadwalView({Key? key}) : super(key: key);
  final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          'Detail Jadwal',
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
          // Column(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     Card(
          //       clipBehavior: Clip.antiAlias,
          //       margin: const EdgeInsets.all(8.0),
          //       child: TableCalendar(
          //         calendarController: _calendarController,
          //         headerStyle: HeaderStyle(
          //           decoration: BoxDecoration(color: AppColors.primary),
          //           headerMargin: const EdgeInsets.only(bottom: 8.0),
          //           titleTextStyle: const TextStyle(color: Colors.white),
          //           formatButtonDecoration: BoxDecoration(
          //             border: Border.all(color: Colors.white),
          //             borderRadius: BorderRadius.circular(9),
          //           ),
          //           formatButtonTextStyle: const TextStyle(color: Colors.white),
          //           leftChevronIcon: const Icon(
          //             Icons.chevron_left,
          //             color: Colors.white,
          //           ),
          //           rightChevronIcon: const Icon(
          //             Icons.chevron_right,
          //             color: Colors.white,
          //           ),
          //         ),
          //         calendarStyle: CalendarStyle(),
          //         calendarBuilders: CalendarBuilders(),
          //         focusedDay: focusedDay,
          //         firstDay: firstDay,
          //         lastDay: lastDay,
          //       ),
          //     )
          //   ],
          // ),
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
                  onPressed: () => Get.toNamed(Routes.TAMBAH_JADWAL),
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
                  label: const Text(
                    'Tambah Jadwal',
                    style: TextStyle(
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
