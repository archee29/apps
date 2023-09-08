import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/modules/home/views/home_view.dart';
import 'package:tugas_akhir/app/modules/iot/views/iot_view.dart';
import 'package:tugas_akhir/app/modules/main/views/main_view.dart';
import 'package:tugas_akhir/app/modules/setting/views/setting_view.dart';

class HomeController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  RxInt _currentIndex = 0.obs;

  get currentIndex => this._currentIndex.value;

  final List<Widget> mainViews = [
    HomeView(),
    MainView(),
    IotView(),
    SettingView(),
  ];

  List<bool> selectedViews = [true, false, false, false, false];

  List<Views> view = [
    Views(viewsName: 'Main', viewsImgUrl: 'assets/icons/sofa.svg'),
    Views(viewsName: 'Iot', viewsImgUrl: 'assets/icons/sofa.svg'),
    Views(viewsName: 'Home', viewsImgUrl: 'assets/icons/sofa.svg'),
    Views(viewsName: 'Settings', viewsImgUrl: 'assets/icons/sofa.svg'),
    Views(viewsName: 'Keluar', viewsImgUrl: 'assets/icons/sofa.svg'),
  ];

  List<bool> isToggled = [false, false, false, false];

  Widget navBarSwitcher() {
    return mainViews.elementAt(currentIndex);
  }

  void viewChange(int index) {
    selectedViews = [false, false, false, false, false];
    selectedViews[index] = true;
    update([1, true]);
  }

  onSwitched(int index) {
    isToggled[index] = !isToggled[index];
    if (index == 0) {
      // var value = isToggled[index] ? "1" : "0";
      isToggled[index] ? "1" : "0";
    }
    if (index == 1) {
      // var value = isToggled[index] ? "#fffff" : "#00000";
      isToggled[index] ? "#fffff" : "#00000";
    }
    update([2, true]);
  }

  setCurrentIndex(int index) {
    _currentIndex.value = index;
    if (index == 1 || index == 5) {
      Get.back();
      Get.back();
    } else if (index == 0) {
      // streamInit();
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}

class Views {
  String viewsName;
  String viewsImgUrl;
  Views({required this.viewsName, required this.viewsImgUrl});
}
