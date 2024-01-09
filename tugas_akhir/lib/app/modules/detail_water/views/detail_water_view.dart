import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/page_index_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';

import '../controllers/detail_water_controller.dart';

class DetailWaterView extends GetView<DetailWaterController> {
  final pageIndexController = Get.find<PageIndexController>();
  DetailWaterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        extendBody: true,
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
                                Get.toNamed(Routes.DETAIL_JADWAL);
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
                              icon:
                                  SvgPicture.asset('assets/icons/dry_food.svg'),
                              label: const Text(
                                "Dry Food",
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 18),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(
                                      width: 1,
                                      color: AppColors.primary,
                                    ),
                                  )),
                              icon: SvgPicture.asset('assets/icons/water.svg'),
                              label: const Text(
                                "Water",
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

                      // Data Stok Minuman
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Data Stok Minuman",
                            style: TextStyle(
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          DetailTile(
                            title: "Lihat Detail",
                            icon: SvgPicture.asset('assets/icons/jadwal.svg'),
                            onTap: () => Get.toNamed(Routes.EDIT_JADWAL),
                          ),
                        ],
                      ),
                      //  Data Stok Pakan Mingguan
                      const SizedBox(height: 20),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Week
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                // Stok Pakan
                                Expanded(
                                  child: Container(
                                    height: 84,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 6),
                                          child: const Text(
                                            'Total Water / Day',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "300 mL",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.bar_chart_rounded,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Output
                                Expanded(
                                  child: Container(
                                    height: 84,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 6),
                                          child: const Text(
                                            'Total Output / Week',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '1.0 L',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.bar_chart_rounded,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
                          // Month
                          Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              children: [
                                // Stok Pakan
                                Expanded(
                                  child: Container(
                                    height: 84,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 6),
                                          child: const Text(
                                            'Total Water / Day',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "300 mL",
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.bar_chart_rounded,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                // Output
                                Expanded(
                                  child: Container(
                                    height: 84,
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 6),
                                          child: const Text(
                                            'Total Output / Month',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ),
                                        const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              '2.0 L',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'poppins',
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Icon(
                                              Icons.bar_chart_rounded,
                                              color: Colors.white,
                                              size: 30,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
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
