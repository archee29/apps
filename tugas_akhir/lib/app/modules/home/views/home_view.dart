import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
import 'package:tugas_akhir/app/widgets/card/feeder_card.dart';
import 'package:tugas_akhir/app/widgets/card/feeder_tile.dart';
import 'package:tugas_akhir/app/widgets/dialog/custom_notification.dart';
import 'package:tugas_akhir/data_pengguna.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      extendBody: true,
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.done:
              Map<String, dynamic> user = snapshot.data!.data()!;
              return ListView(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                children: [
                  const SizedBox(height: 16),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 42,
                            height: 42,
                            child: Image.network(
                              (user["avatar"] == null || user['avatar'] == "")
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
                                color: AppColors.secondarySoft,
                              ),
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
                  StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
                      stream: controller.streamTodayFeeder(),
                      builder: (context, snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.waiting:
                            return const Center(
                                child: CircularProgressIndicator());
                          case ConnectionState.active:
                          case ConnectionState.done:
                            var todayFeederData = snapshot.data?.data();
                            return FeederCard(
                              userData: user,
                              todayFeederData: todayFeederData,
                            );
                          default:
                            return const SizedBox();
                        }
                      }),
                  Container(
                    margin: const EdgeInsets.only(top: 12, bottom: 24, left: 4),
                    child: Text(
                      (user["address"] != null)
                          ? "${user['address']}"
                          : "Belum Ada Lokasi",
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.secondarySoft,
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: AppColors.primaryExtraSoft,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  child: const Text(
                                    'Jarak Dari Rumah',
                                    style: TextStyle(fontSize: 10),
                                  ),
                                ),
                                Obx(
                                  () => Text(
                                    '${controller.houseDistance.value}',
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: GestureDetector(
                            onTap: controller.launchHouseOnMap,
                            child: Container(
                              height: 84,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: AppColors.primaryExtraSoft,
                                borderRadius: BorderRadius.circular(8),
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/map.jpg'),
                                  fit: BoxFit.cover,
                                  opacity: 0.3,
                                ),
                              ),
                              child: const Text(
                                "Buka di Maps",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Feeder History",
                          style: TextStyle(
                            fontFamily: "poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () => Get.toNamed(Routes.ALL_FEEDER),
                          child: const Text("Lihat Semua"),
                          style: TextButton.styleFrom(
                            primary: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                    stream: controller.streamLastFeeder(),
                    builder: (context, snapshot) {
                      switch (snapshot.connectionState) {
                        case ConnectionState.waiting:
                          return const Center(
                              child: CircularProgressIndicator());
                        case ConnectionState.active:
                        case ConnectionState.done:
                          List<QueryDocumentSnapshot<Map<String, dynamic>>>
                              listFeeder = snapshot.data!.docs;
                          return ListView.separated(
                            itemCount: listFeeder.length,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            separatorBuilder: (context, index) =>
                                const SizedBox(height: 16),
                            itemBuilder: (context, index) {
                              Map<String, dynamic> feederData =
                                  listFeeder[index].data();
                              return FeederTile(feederData: feederData);
                            },
                          );
                        default:
                          return const SizedBox();
                      }
                    },
                  ),
                  // Menu Card
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   margin: const EdgeInsets.only(bottom: 10),
                  //   child: Row(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Text(
                  //         "Main Menu",
                  //         style: TextStyle(
                  //           color: Colors.black,
                  //           fontFamily: 'poppins',
                  //           fontWeight: FontWeight.w800,
                  //           decoration: TextDecoration.underline,
                  //           decorationColor: AppColors.primary,
                  //           fontSize: 14,
                  //         ),
                  //       ),
                  //       Expanded(
                  //         child: Container(
                  //           height: 84,
                  //           decoration: BoxDecoration(
                  //             color: AppColors.primary,
                  //             borderRadius: BorderRadius.circular(8),
                  //           ),
                  //           child: Column(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             crossAxisAlignment: CrossAxisAlignment.center,
                  //             children: [
                  //               Container(
                  //                 child: const Text(
                  //                   "Feeder &\nPool",
                  //                   style: TextStyle(
                  //                       color: Colors.white,
                  //                       fontFamily: 'poppins',
                  //                       fontWeight: FontWeight.w400,
                  //                       fontSize: 14),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              );
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            default:
              return const Center(child: Text("Error"));
          }
        },
      ),
    );
  }
}
