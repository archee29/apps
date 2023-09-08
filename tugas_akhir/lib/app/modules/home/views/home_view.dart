import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tugas_akhir/app/controllers/auth_controller.dart';
import 'package:tugas_akhir/app/modules/iot/views/iot_view.dart';
import 'package:tugas_akhir/app/modules/main/views/main_view.dart';
import 'package:tugas_akhir/app/modules/setting/views/setting_view.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_side_menu.dart';
import 'package:tugas_akhir/app/modules/home/views/history_feeder.dart';
import 'package:tugas_akhir/app/modules/home/views/info_feeder.dart';
import 'package:tugas_akhir/app/modules/home/views/menu.dart';
// import 'package:tugas_akhir/app/modules/home/views/menu_button.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  // const HomeView({Key? key}) : super(key: key);
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/icon-kucing.png"),
                backgroundColor: Colors.pinkAccent),
          )
        ],
      ),
      drawer: SideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hello ",
                  style: TextStyle(color: Colors.pinkAccent, fontSize: 20),
                  children: [
                    TextSpan(
                      text: "a",
                      style: TextStyle(
                          color: Colors.pink, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ", welcome back!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Home Screens",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const HistoryFeeder(),
              const SizedBox(
                height: 20,
              ),
              const InfoFeeder(),
              const SizedBox(
                height: 15,
              ),
              const MenuView(),
              const SizedBox(
                height: 15,
              ),
              // MenuButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuButton extends StatefulWidget {
  const MenuButton({super.key});

  @override
  State<MenuButton> createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  int selectedView = 0;
  final List<Widget> mainViews = [
    HomeView(),
    MainView(),
    IotView(),
    SettingView(),
  ];

  void onViewPressed(int index) {
    setState(() {
      selectedView = index;
    });
  }

  @override
  Widget build(BuildContext build) {
    return Scaffold(
      body: IndexedStack(
        index: selectedView,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.pink,
        onTap: onViewPressed,
        currentIndex: selectedView,
        items: [
          BottomNavigationBarItem(
            icon: selectedView == 0
                ? const ImageIcon(AssetImage('assets/icons/hut2.png'))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "Main Views",
          ),
          BottomNavigationBarItem(
            icon: selectedView == 1
                ? const ImageIcon(AssetImage('assets/icons/hut2.png'))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "IoT",
          ),
          BottomNavigationBarItem(
            icon: selectedView == 2
                ? const ImageIcon(AssetImage('assets/icons/hut2.png'))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: selectedView == 3
                ? const ImageIcon(AssetImage('assets/icons/hut2.png'))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: selectedView == 4
                ? const ImageIcon(AssetImage('assets/icons/hut2.png'))
                : const ImageIcon(AssetImage("assets/icons/hut.png")),
            label: "Keluar",
          ),
        ],
      ),
    );
  }
}
