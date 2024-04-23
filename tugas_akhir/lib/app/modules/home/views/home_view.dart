import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
import 'package:tugas_akhir/app/widgets/card/feeder_card.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      extendBody: true,
      body: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        stream: controller.streamUser(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.active:
            case ConnectionState.done:
              Map<String, dynamic> user = snapshot.data!.data()!;
              return Builder(builder: (context) {
                return ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 36),
                  children: [
                    const SizedBox(height: 16),
                    // Menampilkan Foto dan Nama Admin
                    Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          // menampilkan Poto user
                          ClipOval(
                            child: SizedBox(
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
                          // menampilkan nama user
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
                    // Menampilkan Card Welcome Feeder
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

                    // Daily Card
                    // Expanded(
                    //   child: FirebaseAnimatedList(
                    //     query: controller.getMorningFeeder(),
                    //     itemBuilder: (context, snapshot, animation, index) {
                    //       // Map jadwalPagi = snapshot.value as Map;
                    //       // jadwalPagi['jadwalPagi'] = snapshot.key;
                    //       // return DailyCard(jadwalPagi: jadwalPagi);
                    //       return Container(
                    //         width: MediaQuery.of(context).size.width,
                    //         decoration: BoxDecoration(
                    //           borderRadius: BorderRadius.circular(8),
                    //           border: Border.all(
                    //             width: 3,
                    //             color: AppColors.primaryExtraSoft,
                    //           ),
                    //         ),
                    //         padding: const EdgeInsets.only(
                    //             left: 24, top: 20, right: 29, bottom: 20),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             // Deskripsi 1 Info  Feeder
                    //             Column(
                    //               children: [
                    //                 // Daily Feed (food)
                    //                 Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.start,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     const Text(
                    //                       "Daily Feed (gr)",
                    //                       style: TextStyle(
                    //                         fontSize: 10,
                    //                         color: Colors.black,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       // jadwalPagi['tabungMakan'] + 'Gr',
                    //                       '${snapshot.child('wadahMakan').value} Gr',
                    //                       style: TextStyle(
                    //                         color: AppColors.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 // Daily Water (water)
                    //                 Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     const Text(
                    //                       "Daily Water (mL)",
                    //                       style: TextStyle(
                    //                         fontSize: 10,
                    //                         color: Colors.black,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       // jadwalPagi['tabungMinum'] + 'mL',
                    //                       '${snapshot.child('wadahMinum').value} mL',
                    //                       style: TextStyle(
                    //                         color: AppColors.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //             // Deskripsi 2 Info Feeder
                    //             Column(
                    //               children: [
                    //                 // Output Feed (food)
                    //                 Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.start,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     const Text(
                    //                       "Total Feed (Kg)",
                    //                       style: TextStyle(
                    //                         fontSize: 10,
                    //                         color: Colors.black,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       // jadwalPagi['wadahMakan'] + 'Gr',
                    //                       '${snapshot.child('tabungMakan').value} Kg',
                    //                       style: TextStyle(
                    //                         color: AppColors.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 const SizedBox(height: 10),
                    //                 // Output Water
                    //                 Column(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.center,
                    //                   crossAxisAlignment:
                    //                       CrossAxisAlignment.start,
                    //                   children: [
                    //                     const Text(
                    //                       "Total Water (L)",
                    //                       style: TextStyle(
                    //                         fontSize: 10,
                    //                         color: Colors.black,
                    //                       ),
                    //                     ),
                    //                     Text(
                    //                       // jadwalPagi['wadahMinum'] + 'L',
                    //                       '${snapshot.child('tabungMinum').value} L',
                    //                       style: TextStyle(
                    //                         color: AppColors.primary,
                    //                         fontSize: 14,
                    //                         fontWeight: FontWeight.w600,
                    //                       ),
                    //                     ),
                    //                   ],
                    //                 ),
                    //               ],
                    //             ),
                    //             // Button Detail Feeder
                    //             Column(
                    //               mainAxisAlignment: MainAxisAlignment.end,
                    //               children: [
                    //                 // Button Setting
                    //                 SizedBox(
                    //                   child: ElevatedButton.icon(
                    //                     onPressed: () {
                    //                       Get.toNamed(Routes.DETAIL_JADWAL);
                    //                     },
                    //                     style: ElevatedButton.styleFrom(
                    //                       backgroundColor: Colors.white,
                    //                       padding: const EdgeInsets.symmetric(
                    //                           vertical: 18),
                    //                       elevation: 0,
                    //                       shape: RoundedRectangleBorder(
                    //                         borderRadius:
                    //                             BorderRadius.circular(8),
                    //                         side: const BorderSide(
                    //                             color: Colors.white),
                    //                       ),
                    //                       shadowColor: const Color(0x3F000000),
                    //                     ),
                    //                     icon: Icon(
                    //                         Icons.arrow_circle_right_outlined,
                    //                         color: AppColors.primary),
                    //                     label: const Text(
                    //                       "",
                    //                       style: TextStyle(
                    //                         color: Colors.black,
                    //                         fontWeight: FontWeight.w600,
                    //                         fontSize: 12,
                    //                         fontFamily: 'poppins',
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ),
                    //               ],
                    //             ),
                    //           ],
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),

                    const SizedBox(height: 15),

                    // Card Menu
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 3,
                          color: AppColors.primaryExtraSoft,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                          left: 24, top: 20, right: 29, bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Main Menu",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Divider(
                            color: AppColors.primaryExtraSoft,
                            thickness: 2.5,
                          ),
                          const SizedBox(height: 15),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // Button Main Menu
                              TextButton.icon(
                                onPressed: () {
                                  Get.toNamed(Routes.MAIN);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/icon-menu-kucing.svg"),
                                label: Text(
                                  "Feeder&\nPool",
                                  style: TextStyle(
                                    color: AppColors.primary,
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: BorderSide(
                                    color: AppColors.primaryExtraSoft,
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                ),
                              ),
                              // Button Detail Food Menu
                              TextButton.icon(
                                onPressed: () {
                                  Get.toNamed(Routes.DETAIL_JADWAL);
                                },
                                icon: SvgPicture.asset(
                                    "assets/icons/icon-menu-food.svg"),
                                label: const Text(
                                  "Makanan&\nMinuman",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  side: BorderSide(
                                    color: AppColors.primaryExtraSoft,
                                    width: 2,
                                    strokeAlign: BorderSide.strokeAlignOutside,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Menampilkan Alamat Feeder
                    Container(
                      margin:
                          const EdgeInsets.only(top: 12, bottom: 24, left: 4),
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
                    // Menampilkan Card Jarak dan Peta Lokasi Yang Punya Kucing
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
                                      controller.houseDistance.value,
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

                    // Menampilkan Card Info Feeder
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          width: 3,
                          color: AppColors.primaryExtraSoft,
                        ),
                      ),
                      padding: const EdgeInsets.only(
                          left: 24, top: 20, right: 29, bottom: 20),
                      child: Column(
                        children: [
                          // Header Info Feeder
                          Row(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Info Feeder",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Row(
                                    children: [
                                      // Button Setting
                                      SizedBox(
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Get.toNamed(Routes.SETTING);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 18),
                                            elevation: 0,
                                            shadowColor:
                                                const Color(0x3F000000),
                                          ),
                                          icon: const Icon(
                                            Icons.settings,
                                            color: Colors.black,
                                          ),
                                          label: const Text(
                                            "Settings",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              fontFamily: 'poppins',
                                            ),
                                          ),
                                        ),
                                      ),
                                      // Button Edit
                                      SizedBox(
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            Get.toNamed(Routes.ALL_SCHEDULE);
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.white,
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 18),
                                            elevation: 0,
                                            shadowColor:
                                                const Color(0x3F000000),
                                          ),
                                          icon: const Icon(
                                            Icons.mode_edit_outline_outlined,
                                            color: Colors.black,
                                          ),
                                          label: const Text(
                                            "Edit",
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
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.black,
                            thickness: 1,
                          ),
                          const SizedBox(height: 15),
                          // Deskripsi 1 Info  Feeder
                          const Row(
                            children: [
                              // Nama Kandang
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Nama Kandang",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Kandang Kucing",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              // Tabung Pakan
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tabung Pakan",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "1 Kg",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              // Output
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Output",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "120 Gr",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          // Deskripsi 2 Info Feeder
                          const Row(
                            children: [
                              // Jenis Makanan
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jenis Makanan",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "Makanan Kering",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              // Tabung Minum
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tabung Minum",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "1 Liter",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(width: 20),
                              // Output
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Output",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Text(
                                    "300 mL",
                                    style: TextStyle(
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

                    // Menampilkan List Database Feeder Terakhir
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     const Text(
                    //       "Feeder History",
                    //       style: TextStyle(
                    //         fontFamily: "poppins",
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //     ),
                    //     TextButton(
                    //       onPressed: () => Get.toNamed(Routes.ALL_FEEDER),
                    //       style: TextButton.styleFrom(
                    //         foregroundColor: AppColors.primary,
                    //       ),
                    //       child: const Text("Lihat Semua"),
                    //     ),
                    //   ],
                    // ),
                  ],
                );
              });
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
