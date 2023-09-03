import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:tugas_akhir/app/data/models/feeder_model.dart';
import 'package:tugas_akhir/app/data/models/feeder_get.dart';
import 'package:tugas_akhir/app/data/provider/feederAPI.dart';
import 'package:tugas_akhir/app/modules/main/views/dashboard_view.dart';
import 'package:tugas_akhir/app/modules/main/views/main_view.dart';

class MainController extends GetxController {
  RxInt _currentIndex = 0.obs;

  get currentIndex => this._currentIndex.value;

  String email = "Admin";
  bool isMale = true;

  List<bool> selectedMenu = [true, false, false, false, false];

  final List<Widget> mainViews = [
    MainView(),
    DashboardView(),
  ];

  List<Menu> menu = [
    Menu(menuName: 'Home', menuImgUrl: 'assets/icons/sofa.svg'),
    Menu(menuName: 'Main', menuImgUrl: 'assets/icons/sofa.svg'),
    Menu(menuName: 'Feeder', menuImgUrl: 'assets/icons/sofa.svg'),
    Menu(menuName: 'Iot', menuImgUrl: 'assets/icons/sofa.svg'),
    Menu(menuName: 'Settings', menuImgUrl: 'assets/icons/sofa.svg'),
  ];

  List<bool> isToggled = [false, false, false, false];

  late StreamController<FeederGET> servoStream;
  late StreamController<FeederGET> pumpStream;

  RxString currentRGB = "0XFFFFff".obs;
  RxString newRGB = "".obs;

  setCurrentIndex(int index) {
    _currentIndex.value = index;
    if (index == 1 || index == 2) {
      servoStream.close();
      pumpStream.close();
    } else if (index == 0) {
      streamInit();
    }
  }

  Widget navBarSwitcher() {
    return mainViews.elementAt(currentIndex);
  }

  void menuChange(int index) {
    selectedMenu = [false, false, false, false, false];
    selectedMenu[index] = true;
    update([1, true]);
  }

  onSwitched(int index) {
    isToggled[index] = !isToggled[index];
    if (index == 0) {
      var value = isToggled[index] ? "1" : "0";
      FeederAPI.updateLed1Data(value);
    }
    if (index == 1) {
      var value = isToggled[index] ? "#ffffff" : "#000000";
      FeederAPI.updateRGBdata(value);
    }
    update([2, true]);
  }

  retreveSensorData() async {
    FeederGET makanan = await FeederAPI.getMakananData();
    servoStream.add(makanan);

    FeederGET minuman = await FeederAPI.getMinumanData();
    pumpStream.add(minuman);
  }

  getSmartSystemStatus() async {
    var data = await FeederAPI.getLed1Data();
    var rgbData = await FeederAPI.getRGBstatus();
    currentRGB.value = rgbData.lastValue!;
    var value = int.parse(data.lastValue!);
    if (value == 1) {
      isToggled[0] = true;
    } else if (value == 0) {
      isToggled[0] = false;
    }
    if (rgbData.lastValue?.compareTo("#0000") == 0) {
      isToggled[1] = false;
    } else {
      isToggled[1] = true;
    }
    update([2, true]);
  }

  sendRGBColor(String hex) {
    FeederAPI.updateRGBdata(hex);
  }

  streamInit() {
    servoStream = StreamController();
    pumpStream = StreamController();
    Timer.periodic(
      Duration(seconds: 3),
      (_) {
        getSmartSystemStatus();
        retreveSensorData();
      },
    );
  }

  @override
  void onInit() {
    // streamInit();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
