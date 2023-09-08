import 'package:flutter/material.dart';
import 'package:tugas_akhir/app/modules/home/views/home_view.dart';
import 'package:tugas_akhir/app/modules/iot/views/iot_view.dart';
import 'package:tugas_akhir/app/modules/main/views/main_view.dart';
import 'package:tugas_akhir/app/modules/setting/views/setting_view.dart';
// import '../controllers/home_controller.dart';
// import 'package:get/get.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedView,
        // children: [mainViews],
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

// class MenuButton extends GetView<HomeController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Obx(() => controller.navBarSwitcher()),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               padding: EdgeInsets.symmetric(vertical: 25, horizontal: 45),
//               height: 110,
//               width: Get.width,
//               decoration: BoxDecoration(color: Colors.transparent),
//               child: Container(
//                 padding: EdgeInsets.symmetric(horizontal: 30, vertical: 2),
//                 height: 100,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: Theme.of(context).primaryColor,
//                   borderRadius: BorderRadius.circular(24),
//                 ),
//                 child: Obx(
//                   () => Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       IconButton(
//                         onPressed: () {
//                           controller.setCurrentIndex(0);
//                         },
//                         icon: Icon(
//                           Icons.bar_chart_outlined,
//                           size: controller.currentIndex == 0 ? 26 : 22,
//                           color: controller.currentIndex == 0
//                               ? Theme.of(context).scaffoldBackgroundColor
//                               : Theme.of(context)
//                                   .scaffoldBackgroundColor
//                                   .withOpacity(0.5),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           controller.setCurrentIndex(1);
//                         },
//                         icon: Icon(
//                           Icons.wifi_outlined,
//                           size: controller.currentIndex == 1 ? 26 : 22,
//                           color: controller.currentIndex == 1
//                               ? Theme.of(context).scaffoldBackgroundColor
//                               : Theme.of(context)
//                                   .scaffoldBackgroundColor
//                                   .withOpacity(0.5),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           controller.setCurrentIndex(2);
//                         },
//                         icon: Icon(
//                           Icons.home,
//                           size: controller.currentIndex == 2 ? 26 : 22,
//                           color: controller.currentIndex == 2
//                               ? Theme.of(context).scaffoldBackgroundColor
//                               : Theme.of(context)
//                                   .scaffoldBackgroundColor
//                                   .withOpacity(0.5),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           controller.setCurrentIndex(3);
//                         },
//                         icon: Icon(
//                           Icons.settings,
//                           size: controller.currentIndex == 3 ? 26 : 22,
//                           color: controller.currentIndex == 3
//                               ? Theme.of(context).scaffoldBackgroundColor
//                               : Theme.of(context)
//                                   .scaffoldBackgroundColor
//                                   .withOpacity(0.5),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {
//                           controller.setCurrentIndex(4);
//                         },
//                         icon: Icon(
//                           Icons.logout,
//                           size: controller.currentIndex == 4 ? 26 : 22,
//                           color: controller.currentIndex == 4
//                               ? Theme.of(context).scaffoldBackgroundColor
//                               : Theme.of(context)
//                                   .scaffoldBackgroundColor
//                                   .withOpacity(0.5),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
