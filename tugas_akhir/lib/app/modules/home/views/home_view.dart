import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
import 'package:tugas_akhir/app/widgets/card/feeder_card.dart';
import 'package:tugas_akhir/app/widgets/card/feeder_tile.dart';

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
                  // Menampilkan Card Feeder
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
                  // Menampilkan Alamat Feeder
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
                  // Welcome Card
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 24, top: 24, right: 24, bottom: 16),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/pattern-1.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Halo, Admin !",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'poppins',
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 4, bottom: 12),
                          child: const Text(
                            "Cek Kondisi Pakan Hari ini.\nPastikan Stok Pakan Cukup, Untuk Hari Ini!",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              // letterSpacing: 2,
                            ),
                          ),
                        ),
                        Container()
                      ],
                    ),
                  ),
                  // Menampilkan Feeder History
                  Row(
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
                        style: TextButton.styleFrom(
                          foregroundColor: AppColors.primary,
                        ),
                        child: const Text("Lihat Semua"),
                      ),
                    ],
                  ),
                  // Menampilkan List Database Feeder Terakhir
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
                            physics: const BouncingScrollPhysics(),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                      left: 24,
                      top: 24,
                      right: 24,
                      bottom: 16,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.secondaryExtraSoft,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Menu",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'poppins',
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.primary,
                            decorationStyle: TextDecorationStyle.solid,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 6),
                                      child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.MAIN),
                                        child: const Text(
                                          "Feeder &\nPool",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Expanded(
                              //   child: Column(
                              //     children: [
                              //       Container(
                              //         margin: EdgeInsets.only(bottom: 6),
                              //         child: Text(
                              //           "Makanan &\nMinuman",
                              //           style: TextStyle(
                              //             fontSize: 12,
                              //             color: AppColors.primary,
                              //           ),
                              //         ),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
