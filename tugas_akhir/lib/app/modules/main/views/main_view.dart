import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tugas_akhir/app/controllers/page_index_controller.dart';
import 'package:tugas_akhir/app/routes/app_pages.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_bottom_navbar.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_calendar.dart';
import 'package:tugas_akhir/app/widgets/card/schedule_tile.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  final pageIndexController = Get.find<PageIndexController>();

  MainView({super.key});

  @override
  Widget build(BuildContext context) {
    MainController mc = Get.put(MainController());
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
                    ),
                    child: Column(
                      children: [
                        // Header Text
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Feeder",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.primary,
                              ),
                            ),
                            Row(
                              children: [
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
                                      shadowColor: const Color(0x3F000000),
                                    ),
                                    icon: const Icon(
                                      Icons.settings,
                                      color: Colors.black,
                                    ),
                                    label: const Text(
                                      "Cek Status Alat",
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
                        const Divider(
                          color: Colors.black,
                          thickness: 1,
                        ),
                        const SizedBox(height: 15),
                        // Button tambah makan dan minum
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            // Button Servo (on/off)
                            Obx(
                              () => FlutterSwitch(
                                toggleSize: 30,
                                width: 110,
                                height: 55,
                                valueFontSize: 15,
                                padding: 7,
                                activeText: "Servo",
                                activeIcon: const Text("ON"),
                                activeColor: AppColors.success,
                                activeTextFontWeight: FontWeight.normal,
                                inactiveText: "Servo",
                                inactiveIcon: const Text("OFF"),
                                inactiveColor: AppColors.error,
                                inactiveTextFontWeight: FontWeight.normal,
                                showOnOff: true,
                                value: mc.servoSwitched.value,
                                onToggle: (val) => mc.servoToggled(),
                              ),
                            ),

                            // Button Pump (on/off)
                            Obx(
                              () => FlutterSwitch(
                                toggleSize: 30,
                                width: 110,
                                height: 55,
                                valueFontSize: 15,
                                padding: 7,
                                activeText: "Pump Water",
                                activeIcon: const Text("ON"),
                                activeColor: AppColors.success,
                                activeTextFontWeight: FontWeight.normal,
                                inactiveText: "Pump Water",
                                inactiveIcon: const Text("OFF"),
                                inactiveColor: AppColors.error,
                                inactiveTextFontWeight: FontWeight.normal,
                                showOnOff: true,
                                value: mc.pumpSwitched.value,
                                onToggle: (val) => mc.pumpToggled(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  // Stok Pakan dan minum Card
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Stok Pakan",
                        style: TextStyle(
                          fontFamily: 'poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                        ),
                      ),
                      MainTile(
                        title: "Lihat Selengkapnya",
                        icon: SvgPicture.asset('assets/icons/edit.svg'),
                        onTap: () => Get.toNamed(Routes.DETAIL_JADWAL),
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
                                      "120 Gram",
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
                                      "120 mL",
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

                  // StreamBuilder(
                  //   stream: controller.streamTodaySchedule(),
                  //   builder: (context, snapshot) {
                  //     switch (snapshot.connectionState) {
                  //       case ConnectionState.waiting:
                  //         return const Center(
                  //             child: CircularProgressIndicator());
                  //       case ConnectionState.active:
                  //       case ConnectionState.done:
                  //         var todayScheduleData = snapshot.data?.data();
                  //         return CustomCalendar(
                  //           userData: user,
                  //           todayScheduleData: todayScheduleData,
                  //         );
                  //       default:
                  //         return const SizedBox();
                  //     }
                  //   },
                  // ),

                  const CustomCalendar(),
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
                        title: "Detail Data",
                        icon: SvgPicture.asset('assets/icons/jadwal.svg'),
                        onTap: () => Get.toNamed(Routes.ALL_SCHEDULE),
                      ),
                    ],
                  ),

                  // Menampilkan List Database schedule Terakhir
                  GetBuilder<MainController>(
                    builder: (con) {
                      return FutureBuilder<QuerySnapshot<Map<String, dynamic>>>(
                        future: controller.getAllSchedule(),
                        builder: (context, snapshot) {
                          switch (snapshot.connectionState) {
                            case ConnectionState.waiting:
                              return const Center(
                                  child: CircularProgressIndicator());
                            case ConnectionState.active:
                            case ConnectionState.done:
                              var data = snapshot.data!.docs;
                              return ListView.separated(
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount: snapshot.data!.docs.length,
                                  separatorBuilder: (context, index) =>
                                      const SizedBox(height: 16),
                                  itemBuilder: (context, index) {
                                    var scheduleData = data[index].data();
                                    return ScheduleTile(
                                      scheduleData: scheduleData,
                                    );
                                  });
                            default:
                              return const SizedBox();
                          }
                        },
                      );
                    },
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
