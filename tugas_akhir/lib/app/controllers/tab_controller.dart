import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:tugas_akhir/app/widgets/wrapper/add_wrapper.dart';

class TabsController extends GetxController with SingleGetTickerProviderMixin {
  // var tabStatus = true.obs;
  late TabController controller;
  final List<Tab> addTabs = <Tab>[
    const Tab(
      text: 'Jadwal Pagi',
    ),
    const Tab(
      text: 'Jadwal Sore',
    )
  ];

  // void toggleTabs() {
  //   tabStatus.value = !tabStatus.value;
  //   if (tabStatus.value == true) {
  //     const JadwalPagiForm();
  //   } else {
  //     const JadwalSoreForm();
  //   }
  // }

  // late PageController pageController;
  // RxInt currentPage = 0.obs;

  // void goToTab(int page) {
  //   currentPage.value = page;
  //   pageController.jumpToPage(page);
  // }

  // void animateToTab(int page) {
  //   currentPage.value = page;
  //   pageController.animateToPage(page,
  //       duration: const Duration(milliseconds: 300), curve: Curves.ease);
  // }

  @override
  void onInit() {
    // pageController = PageController(initialPage: 0);
    controller = TabController(length: 2, vsync: this);
    super.onInit();
  }

  @override
  void onClose() {
    // pageController.dispose();
    controller.dispose();
    super.onClose();
  }
}
