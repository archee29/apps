import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';

import 'package:tugas_akhir/app/widgets/tile/feeder_tile.dart';

import '../controllers/detail_water_controller.dart';

class DetailWaterView extends GetView<DetailWaterController> {
  const DetailWaterView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Data Manual',
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
          actions: [
            Container(
              width: 44,
              height: 44,
              margin: const EdgeInsets.only(bottom: 8, top: 8, right: 8),
              child: ElevatedButton(
                onPressed: () {
                  Get.dialog(
                    Dialog(
                      child: SizedBox(
                        height: 372,
                        child: SfDateRangePicker(
                          headerHeight: 50,
                          headerStyle: const DateRangePickerHeaderStyle(
                              textAlign: TextAlign.center),
                          monthViewSettings:
                              const DateRangePickerMonthViewSettings(
                                  firstDayOfWeek: 1),
                          selectionMode: DateRangePickerSelectionMode.range,
                          rangeSelectionColor:
                              AppColors.primary.withOpacity(0.2),
                          viewSpacing: 10,
                          showActionButtons: true,
                          onCancel: () => Get.back(),
                          onSubmit: (data) {
                            if (data != null) {
                              PickerDateRange range = data as PickerDateRange;
                              if (range.endDate != null) {
                                controller.pickDate(
                                    range.startDate!, range.endDate!);
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  elevation: 0,
                  padding: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: SvgPicture.asset('assets/icons/filter.svg'),
              ),
            )
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                color: AppColors.secondaryExtraSoft),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
          children: [
            // Data Scheduled
            // GetBuilder<DetailJadwalController>(
            //   builder: (con) {
            //     return FutureBuilder<
            //         QuerySnapshot<Map<String, dynamic>>>(
            //       future: controller.getAllSchedule(),
            //       builder: (context, snapshot) {
            //         switch (snapshot.connectionState) {
            //           case ConnectionState.waiting:
            //             return const Center(
            //                 child: CircularProgressIndicator());
            //           case ConnectionState.active:
            //           case ConnectionState.done:
            //             var data = snapshot.data!.docs;
            //             return ListView.builder(
            //               shrinkWrap: true,
            //               physics: const BouncingScrollPhysics(),
            //               itemBuilder: (context, index) {
            //                 var scheduleData = data[index].data();
            //                 return ScheduleTile(
            //                     scheduleData: scheduleData);
            //               },
            //               itemCount: data.length,
            //             );
            //           default:
            //             return const SizedBox();
            //         }
            //       },
            //     );
            //   },
            // ),
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
            //         if (snapshot.hasData) {
            //           return ListView.builder(
            //               shrinkWrap: true,
            //               physics: const BouncingScrollPhysics(),
            //               // separatorBuilder: (context, index) =>
            //               //     const SizedBox(height: 16),
            //               itemCount: listSchedule.length,
            //               itemBuilder: (context, index) {
            //                 Map<String, dynamic> scheduleData =
            //                     listSchedule[index].data();
            //                 return ScheduleTile(
            //                     scheduleData: scheduleData);
            //               });
            //         } else if (snapshot.hasError) {
            //           return Text("${snapshot.error}");
            //         } else {
            //           return const Center(
            //               child: CircularProgressIndicator());
            //         }
            //       default:
            //         return const SizedBox();
            //     }
            //   },
            // ),

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
                      Get.toNamed(Routes.ALL_SCHEDULE);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: const BorderSide(
                            width: 1,
                            color: Color(0xfffff39b0),
                          ),
                        )),
                    icon: SvgPicture.asset('assets/icons/icon-data-iot.svg'),
                    label: const Text(
                      "Data IOT",
                      style: TextStyle(
                        color: Colors.black,
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
                        backgroundColor: AppColors.primary,
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            width: 1,
                            color: AppColors.primary,
                          ),
                        )),
                    icon:
                        SvgPicture.asset('assets/icons/icon-data-manual2.svg'),
                    label: const Text(
                      "Data Manual",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        fontFamily: 'poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Data Feeder

            GetBuilder<DetailWaterController>(
              builder: (con) {
                return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                  future: controller.getAllFeeder(),
                  builder: (context, snapshot) {
                    switch (snapshot.connectionState) {
                      case ConnectionState.waiting:
                        return const Center(child: CircularProgressIndicator());
                      case ConnectionState.active:
                      case ConnectionState.done:
                        var data = snapshot.data!.docs;
                        return ListView.separated(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.all(20),
                          itemCount: data.length,
                          separatorBuilder: (context, index) =>
                              const SizedBox(height: 16),
                          itemBuilder: (context, index) {
                            var feederData = data[index].data();
                            return FeederTile(
                              feederData: feederData,
                            );
                          },
                        );
                      default:
                        return const SizedBox();
                    }
                  },
                );
              },
            ),

            // Data Stok Minuman
            // const SizedBox(height: 25),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     const Text(
            //       "Data Stok Minuman",
            //       style: TextStyle(
            //         fontFamily: 'poppins',
            //         fontWeight: FontWeight.w600,
            //         fontSize: 18,
            //       ),
            //     ),
            //     DetailTile(
            //       title: "Lihat Detail",
            //       icon: SvgPicture.asset('assets/icons/jadwal.svg'),
            //       onTap: () => Get.toNamed(Routes.ALL_SCHEDULE),
            //     ),
            //   ],
            // ),

            //  Data Stok Pakan Mingguan
            // const SizedBox(height: 20),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     // Week
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       margin: const EdgeInsets.only(bottom: 10),
            //       child: Row(
            //         children: [
            //           // Stok Pakan
            //           Expanded(
            //             child: Container(
            //               height: 84,
            //               decoration: BoxDecoration(
            //                 color: AppColors.primary,
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: Column(
            //                 mainAxisAlignment:
            //                     MainAxisAlignment.center,
            //                 children: [
            //                   Container(
            //                     margin:
            //                         const EdgeInsets.only(bottom: 6),
            //                     child: const Text(
            //                       'Total Water / Day',
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 14),
            //                     ),
            //                   ),
            //                   const Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "300 mL",
            //                         style: TextStyle(
            //                           fontSize: 15,
            //                           fontFamily: 'poppins',
            //                           fontWeight: FontWeight.w700,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                       Icon(
            //                         Icons.bar_chart_rounded,
            //                         color: Colors.white,
            //                         size: 30,
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           const SizedBox(width: 16),
            //           // Output
            //           Expanded(
            //             child: Container(
            //               height: 84,
            //               decoration: BoxDecoration(
            //                 color: AppColors.primary,
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: Column(
            //                 mainAxisAlignment:
            //                     MainAxisAlignment.center,
            //                 children: [
            //                   Container(
            //                     margin:
            //                         const EdgeInsets.only(bottom: 6),
            //                     child: const Text(
            //                       'Total Output / Week',
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 14),
            //                     ),
            //                   ),
            //                   const Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         '1.0 L',
            //                         style: TextStyle(
            //                           fontSize: 15,
            //                           fontFamily: 'poppins',
            //                           fontWeight: FontWeight.w700,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                       Icon(
            //                         Icons.bar_chart_rounded,
            //                         color: Colors.white,
            //                         size: 30,
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //     const SizedBox(height: 15),
            //     // Month
            //     Container(
            //       width: MediaQuery.of(context).size.width,
            //       margin: const EdgeInsets.only(bottom: 10),
            //       child: Row(
            //         children: [
            //           // Stok Pakan
            //           Expanded(
            //             child: Container(
            //               height: 84,
            //               decoration: BoxDecoration(
            //                 color: AppColors.primary,
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: Column(
            //                 mainAxisAlignment:
            //                     MainAxisAlignment.center,
            //                 children: [
            //                   Container(
            //                     margin:
            //                         const EdgeInsets.only(bottom: 6),
            //                     child: const Text(
            //                       'Total Water / Day',
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 14),
            //                     ),
            //                   ),
            //                   const Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         "300 mL",
            //                         style: TextStyle(
            //                           fontSize: 15,
            //                           fontFamily: 'poppins',
            //                           fontWeight: FontWeight.w700,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                       Icon(
            //                         Icons.bar_chart_rounded,
            //                         color: Colors.white,
            //                         size: 30,
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //           const SizedBox(width: 16),
            //           // Output
            //           Expanded(
            //             child: Container(
            //               height: 84,
            //               decoration: BoxDecoration(
            //                 color: AppColors.primary,
            //                 borderRadius: BorderRadius.circular(8),
            //               ),
            //               child: Column(
            //                 mainAxisAlignment:
            //                     MainAxisAlignment.center,
            //                 children: [
            //                   Container(
            //                     margin:
            //                         const EdgeInsets.only(bottom: 6),
            //                     child: const Text(
            //                       'Total Output / Month',
            //                       style: TextStyle(
            //                           color: Colors.white,
            //                           fontSize: 14),
            //                     ),
            //                   ),
            //                   const Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text(
            //                         '2.0 L',
            //                         style: TextStyle(
            //                           fontSize: 15,
            //                           fontFamily: 'poppins',
            //                           fontWeight: FontWeight.w700,
            //                           color: Colors.white,
            //                         ),
            //                       ),
            //                       Icon(
            //                         Icons.bar_chart_rounded,
            //                         color: Colors.white,
            //                         size: 30,
            //                       ),
            //                     ],
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           )
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ));
  }
}

class DetailTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function() onTap;
  final bool isDanger;

  const DetailTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    this.isDanger = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            child: icon,
          ),
          const SizedBox(width: 5),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
