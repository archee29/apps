import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tugas_akhir/app/controllers/page_index_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
// import 'package:tugas_akhir/app/widgets/card/schedule_tile.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  final pageIndexController = Get.find<PageIndexController>();

  MainView({super.key});

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
                              (user["avatar"] == null || user['avatar'] == "")
                                  ? "https://ui-avatars.com/api/?name=${user['name']}/"
                                  : user['avatar'],
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
                  // Feeder Card
                  const SizedBox(height: 30),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(
                        left: 24, top: 24, right: 24, bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primary),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x003f0000),
                          blurRadius: 20,
                          offset: Offset(4, 4),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Feeder",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(width: 80),
                                MainTile(
                                  title: "Cek Status Alat",
                                  icon: SvgPicture.asset(
                                      'assets/icons/setting.svg'),
                                  onTap: () => Get.toNamed(Routes.SETTING),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  // Tambah Feeder Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Jadwal Feeder",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      MainTile(
                        title: "Tambah Jadwal",
                        icon: SvgPicture.asset('assets/icons/tambah.svg'),
                        onTap: () => Get.toNamed(Routes.TAMBAH_JADWAL),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    margin: const EdgeInsets.all(8.0),
                    child: TableCalendar(
                      focusedDay: DateTime.now(),
                      firstDay: DateTime(1950),
                      lastDay: DateTime(2100),
                      headerStyle: HeaderStyle(
                        decoration: BoxDecoration(color: AppColors.primary),
                        headerMargin: const EdgeInsets.only(bottom: 8.0),
                        titleTextStyle: const TextStyle(color: Colors.white),
                        formatButtonDecoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        formatButtonTextStyle:
                            const TextStyle(color: Colors.white),
                        leftChevronIcon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        rightChevronIcon: const Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Stok Pakan dan minum Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Stok Pakan Mingguan",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      MainTile(
                        title: "Edit Jadwal",
                        icon: SvgPicture.asset('assets/icons/edit.svg'),
                        onTap: () => Get.toNamed(Routes.EDIT_JADWAL),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Card Makanan
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  child: const Text(
                                    'Total Food / Day',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '120 Gr',
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  child: const Text(
                                    'Total Output',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1.0 Kg',
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
                  // Card Minuman
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        // Stok Minum
                        Expanded(
                          child: Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  child: const Text(
                                    'Total Water / Day',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '120 ml',
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
                        // Output Minuman
                        Expanded(
                          child: Container(
                            height: 84,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 6),
                                  child: const Text(
                                    'Total Output',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '1 liter',
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
                  const SizedBox(height: 20),
                  // Jadwal Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Jadwal Tersedia",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      MainTile(
                        title: "Lihat Jadwal",
                        icon: SvgPicture.asset('assets/icons/jadwal.svg'),
                        onTap: () => Get.toNamed(Routes.DETAIL_JADWAL),
                      ),
                    ],
                  ),

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
                  //         return ListView.separated(
                  //           physics: const BouncingScrollPhysics(),
                  //           itemCount: listSchedule.length,
                  //           separatorBuilder: (context, index) =>
                  //               const SizedBox(height: 16),
                  //           itemBuilder: (context, index) {
                  //             Map<String, dynamic> scheduleData =
                  //                 listSchedule[index].data();
                  //             return ScheduleTile(scheduleData: scheduleData);
                  //           },
                  //         );
                  //       default:
                  //         return const SizedBox();
                  //     }
                  //   },
                  // ),

                  // StreamBuilder<QuerySnapshot<Object?>>(
                  //   stream: controller.streamData(),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.connectionState == ConnectionState.active) {
                  //       var listSchedule = snapshot.data!.docs;
                  //       return ListView.builder(
                  //         itemBuilder: (context, index) => ListTile(
                  //           title: Text(
                  //             "${(listSchedule[index].data() as Map<String, dynamic>)["schedule"]}",
                  //           ),
                  //           onTap: () => Get.toNamed(Routes.EDIT_JADWAL,
                  //               arguments: listSchedule[index].id),
                  //           trailing: IconButton(
                  //             onPressed: () => controller
                  //                 .deleteSchedule(listSchedule[index].id),
                  //             icon: SvgPicture.asset('assets/icons/close.svg'),
                  //           ),
                  //         ),
                  //       );
                  //     }
                  //     return const Center(child: CircularProgressIndicator());
                  //   },
                  // ),
                  const SizedBox(height: 20),
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

class MainTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function() onTap;
  final bool isDanger;

  const MainTile({
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

class ScheduleDataSource extends DataGridSource {
  @override
  DataGridRowAdapter? buildRow(DataGridRow row) {
    throw UnimplementedError();
  }
}
