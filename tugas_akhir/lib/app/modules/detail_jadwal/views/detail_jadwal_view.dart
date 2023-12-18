import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
import 'package:tugas_akhir/app/widgets/card/schedule_tile.dart';

import '../controllers/detail_jadwal_controller.dart';

class DetailJadwalView extends GetView<DetailJadwalController> {
  const DetailJadwalView({Key? key}) : super(key: key);
  // final CalendarController _calendarController = CalendarController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        extendBody: true,
        // appBar: AppBar(
        //   title: Text(
        //     'Detail Jadwal',
        //     style: TextStyle(
        //       color: AppColors.secondary,
        //       fontSize: 14,
        //     ),
        //   ),
        //   leading: IconButton(
        //     onPressed: () => Get.back(),
        //     icon: SvgPicture.asset('assets/icons/arrow-left.svg'),
        //   ),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   centerTitle: true,
        //   bottom: PreferredSize(
        //     preferredSize: const Size.fromHeight(1),
        //     child: Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: 1,
        //       color: AppColors.secondaryExtraSoft,
        //     ),
        //   ),
        // ),

        body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: controller.streamUser(),
          builder: ((context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
              case ConnectionState.done:
                Map<String, dynamic> user = snapshot.data!.data()!;
                return Builder(builder: (context) {
                  return ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 36),
                    children: [
                      const SizedBox(height: 16),
                      Container(
                        margin: const EdgeInsets.only(bottom: 16),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            ClipOval(
                              child: SizedBox(
                                width: 42,
                                height: 42,
                                child: Image.network(
                                  (user["avatar"] == null ||
                                          user['avatar'] == "")
                                      ? "https://ui-avatars.com/api/?name=${user['name']}/"
                                      : user['avatar'],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Selamat Datang",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.secondarySoft),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  user["name"],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'poppins',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Data Scheduled

                      // StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      //   stream: controller.streamLastSchedule(),
                      //   builder:
                      //       (BuildContext context, AsyncSnapshot snapshot) {
                      //     if (snapshot.hasData) {
                      //       List<QueryDocumentSnapshot<Map<String, dynamic>>>
                      //           listSchedule = snapshot.data!.docs;
                      //       return ListView.builder(
                      //         itemCount: listSchedule.length,
                      //         itemBuilder: (context, index) {
                      //           Map<String, dynamic> scheduleData =
                      //               listSchedule[index].data();
                      //           return ScheduleDataGrid(
                      //               scheduleDataSource: scheduleData);
                      //         },
                      //       );
                      //     }
                      //     return const CircularProgressIndicator();
                      //   },
                      // ),

                      // StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      //     stream: controller.streamLastSchedule(),
                      //     builder: (context, snapshot) {
                      //       switch (snapshot.connectionState) {
                      //         case ConnectionState.waiting:
                      //           return const Center(
                      //               child: CircularProgressIndicator());
                      //         case ConnectionState.active:
                      //         case ConnectionState.done:
                      //           List<
                      //                   QueryDocumentSnapshot<
                      //                       Map<String, dynamic>>>
                      //               listSchedule = snapshot.data!.docs;
                      //           return ListView.separated(
                      //             itemCount: listSchedule.length,
                      //             shrinkWrap: true,
                      //             physics: const BouncingScrollPhysics(),
                      //             separatorBuilder: (context, index) =>
                      //                 const SizedBox(height: 16),
                      //             itemBuilder: (context, index) {
                      //               Map<String, dynamic> scheduleData =
                      //                   listSchedule[index].data();
                      //               return ScheduleDataGrid(
                      //                   scheduleDataSource: scheduleData);
                      //             },
                      //           );
                      //         default:
                      //           return const SizedBox();
                      //       }
                      //     }),

                      // StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      //   stream: controller.streamLastSchedule(),
                      //   builder: (context, snapshot) {
                      //     switch (snapshot.connectionState) {
                      //       case ConnectionState.waiting:
                      //         return const Center(
                      //             child: CircularProgressIndicator());
                      //       case ConnectionState.active:
                      //       case ConnectionState.done:
                      //         List<QueryDocumentSnapshot<Map<String, dynamic>>>
                      //             listSchedule = snapshot.data!.docs;
                      //         return ListView.builder(
                      //           physics: const BouncingScrollPhysics(),
                      //           itemCount: listSchedule.length,
                      //           itemBuilder: (context, index) {
                      //             return Card(
                      //               child: Column(
                      //                 children: [
                      //                   ListTile(
                      //                     title: Text(
                      //                         "${(listSchedule[index].data())["schedule"]}"),
                      //                     onTap: () => Get.toNamed(
                      //                         Routes.EDIT_JADWAL,
                      //                         arguments:
                      //                             listSchedule[index].id),
                      //                     trailing: IconButton(
                      //                       onPressed: () =>
                      //                           controller.deleteSchedule(
                      //                               listSchedule[index].id),
                      //                       icon: SvgPicture.asset(
                      //                           'assets/icons/close.svg'),
                      //                     ),
                      //                   ),
                      //                 ],
                      //               ),
                      //             );
                      //           },
                      //         );
                      //       default:
                      //         return const SizedBox();
                      //     }
                      //   },
                      // ),

                      const SizedBox(width: 24),
                      // Button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Dry Food Button
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Get.toNamed(Routes.DETAIL_FOOD);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 18),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Colors.white,
                                    ),
                                  )),
                              icon: SvgPicture.asset(
                                  'assets/icons/dry_food2.svg'),
                              label: const Text(
                                "Dry Food",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          // Water Button
                          SizedBox(
                            width: 150,
                            height: 60,
                            child: ElevatedButton.icon(
                              onPressed: () {
                                Get.toNamed(Routes.DETAIL_WATER);
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 18),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: const BorderSide(
                                      width: 1,
                                      color: Color(0xfffff39b0),
                                    ),
                                  )),
                              icon: SvgPicture.asset('assets/icons/water2.svg'),
                              label: const Text(
                                "Water",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  fontFamily: 'poppins',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                });
              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator());
              default:
                return const Center(child: Text("Error"));
            }
          }),
        ));
  }
}

// ListView(
//         shrinkWrap: true,
//         physics: const BouncingScrollPhysics(),
//         padding: const EdgeInsets.all(20),
//         children: [
//           // Column(
//           //   crossAxisAlignment: CrossAxisAlignment.start,
//           //   children: <Widget>[
//           //     Card(
//           //       clipBehavior: Clip.antiAlias,
//           //       margin: const EdgeInsets.all(8.0),
//           //       child: TableCalendar(
//           //         calendarController: _calendarController,
//           //         headerStyle: HeaderStyle(
//           //           decoration: BoxDecoration(color: AppColors.primary),
//           //           headerMargin: const EdgeInsets.only(bottom: 8.0),
//           //           titleTextStyle: const TextStyle(color: Colors.white),
//           //           formatButtonDecoration: BoxDecoration(
//           //             border: Border.all(color: Colors.white),
//           //             borderRadius: BorderRadius.circular(9),
//           //           ),
//           //           formatButtonTextStyle: const TextStyle(color: Colors.white),
//           //           leftChevronIcon: const Icon(
//           //             Icons.chevron_left,
//           //             color: Colors.white,
//           //           ),
//           //           rightChevronIcon: const Icon(
//           //             Icons.chevron_right,
//           //             color: Colors.white,
//           //           ),
//           //         ),
//           //         calendarStyle: CalendarStyle(),
//           //         calendarBuilders: CalendarBuilders(),
//           //         focusedDay: focusedDay,
//           //         firstDay: firstDay,
//           //         lastDay: lastDay,
//           //       ),
//           //     )
//           //   ],
//           // ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               // Cancel Button
//               SizedBox(
//                 width: 120,
//                 height: 60,
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     Get.toNamed(Routes.MAIN);
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(vertical: 18),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       side:
//                           const BorderSide(width: 1, color: Color(0xFFFF39B0)),
//                     ),
//                     shadowColor: const Color(0x3F000000),
//                   ),
//                   icon: SvgPicture.asset('assets/icons/cancel_button.svg'),
//                   label: const Text(
//                     "Cancel",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontWeight: FontWeight.w600,
//                       fontSize: 12,
//                       fontFamily: 'poppins',
//                     ),
//                   ),
//                 ),
//               ),
//               // Tambah Button
//               SizedBox(
//                 width: 200,
//                 height: 60,
//                 child: ElevatedButton.icon(
//                   onPressed: () => Get.toNamed(Routes.TAMBAH_JADWAL),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primary,
//                     padding: const EdgeInsets.symmetric(vertical: 18),
//                     elevation: 0,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                       side: const BorderSide(
//                         width: 1,
//                         color: Colors.white,
//                       ),
//                     ),
//                     shadowColor: const Color(0x3F000000),
//                   ),
//                   icon: SvgPicture.asset('assets/icons/tambah_button.svg'),
//                   label: const Text(
//                     'Tambah Jadwal',
//                     style: TextStyle(
//                       fontSize: 14,
//                       fontFamily: 'poppins',
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
