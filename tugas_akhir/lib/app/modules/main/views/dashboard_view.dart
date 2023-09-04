import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:tugas_akhir/app/data/models/feeder_get.dart';
import 'package:tugas_akhir/app/widgets/MainWidgets/menu_selector.dart';
import 'package:tugas_akhir/app/widgets/MainWidgets/smart_systems.dart';
import 'package:tugas_akhir/app/widgets/MainWidgets/user_avatar.dart';
import 'package:tugas_akhir/app/modules/main/controllers/main_controller.dart';
import 'package:tugas_akhir/app/modules/main/views/rgb_view.dart';
import 'package:tugas_akhir/app/styles/color_theme.dart';
import 'package:tugas_akhir/app/styles/text_theme.dart';

import '../controllers/main_controller.dart';

class DashboardView extends GetView<MainController> {
  @override
  Widget build(BuildContext context) {
    Size size = Get.size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.067),
      height: size.height,
      width: size.width,
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: size.height * 0.08),
          // view untuk nama admin
          GetBuilder<MainController>(
            id: 7,
            builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Welcome\nHome, ${controller.email}',
                    style: MainFeTextTheme.kHeadTextStyle
                        .copyWith(color: Theme.of(context).primaryColorDark),
                  ),
                  GestureDetector(
                    // onTap:()=>Get.to(()=> ProfileView()),
                    child: UserAvatar(
                        isMale: controller.isMale, radius: size.width * 0.075),
                  ),
                ],
              );
            },
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          // view untuk menu screen dan sensor
          Expanded(
            child: Container(
              width: size.width * 0.9,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: size.height * 0.02),
                    Text(
                      'Home',
                      style: MainFeTextTheme.kSub2HeadTextStyle
                          .copyWith(color: Theme.of(context).primaryColorDark),
                    ),
                    GetBuilder<MainController>(
                      init: MainController(),
                      id: 1,
                      builder: (_) {
                        return Container(
                          width: size.width,
                          height: size.height * 0.12,
                          child: Theme(
                            data: Theme.of(context),
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: controller.menu.length,
                              itemBuilder: (contex, index) {
                                return GestureDetector(
                                  child: MenuSelector(
                                    menuName: controller.menu[index].menuName,
                                    menuImageURL:
                                        controller.menu[index].menuImgUrl,
                                    isSelected: controller.selectedMenu[index],
                                    onTap: () {},
                                  ),
                                  onTap: () {
                                    controller.menuChange(index);
                                  },
                                );
                              },
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    // view untuk card servo (makanan)
                    Container(
                      width: Get.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          StreamBuilder<FeederGET>(
                            stream: controller.servoStream.stream,
                            builder: (context, snapshot) {
                              if (!snapshot.hasData ||
                                  snapshot == ConnectionState.waiting) {
                                return FeederBanner(
                                  img: 'assets/icons/temperature.png',
                                  title: 'Makanan',
                                  horizontalPadding: Get.width * 0.046,
                                  child: SizedBox(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                    height: 15,
                                    width: 15,
                                  ),
                                );
                              } else {
                                var value;
                                snapshot.data!.lastValue == 'nan'
                                    ? value = 0
                                    : value =
                                        double.parse(snapshot.data!.lastValue!)
                                            .toInt();
                                return FeederBanner(
                                  img: 'assets/icons/temperature.png',
                                  title: 'Makanan',
                                  horizontalPadding: Get.width * 0.046,
                                  child: Text(
                                    '$value : Sisa Makanan',
                                    style: MainFeTextTheme.kSub2HeadTextStyle
                                        .copyWith(
                                      color: Theme.of(context).primaryColorDark,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                );
                              }
                            },
                          ),
                          // view untuk card mini pump (minuman)
                          StreamBuilder<FeederGET>(
                              stream: controller.pumpStream.stream,
                              builder: (context, snapshot) {
                                if (!snapshot.hasData ||
                                    snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                  return FeederBanner(
                                    img: 'assets/icons/humidity.png',
                                    title: 'Minuman',
                                    horizontalPadding: Get.width * 0.044,
                                    child: SizedBox(
                                      child: CircularProgressIndicator(
                                        strokeWidth: 2,
                                      ),
                                      height: 15,
                                      width: 15,
                                    ),
                                  );
                                } else {
                                  var value;
                                  snapshot.data!.lastValue == 'nan'
                                      ? value = 0
                                      : value = double.parse(
                                              snapshot.data!.lastValue!)
                                          .toInt();
                                  return FeederBanner(
                                    img: 'assets/icons/humidity.png',
                                    title: 'Minuman',
                                    horizontalPadding: Get.width * 0.044,
                                    child: Text(
                                      '$value %',
                                      style: MainFeTextTheme.kSub2HeadTextStyle
                                          .copyWith(
                                        color:
                                            Theme.of(context).primaryColorDark,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  );
                                }
                              }),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'IoT Systems',
                      style: MainFeTextTheme.kSub2HeadTextStyle
                          .copyWith(color: Theme.of(context).primaryColorDark),
                    ),
                    SizedBox(height: size.height * 0.03),
                    GetBuilder<MainController>(builder: (_) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmartSystem(
                                color: ColorTheme.lightPurple,
                                index: 0,
                                title: 'LED Light',
                                imageUrl: 'assets/images/icons8-light-96.png',
                                onTap: () {},
                              ),
                              SmartSystem(
                                color: ColorTheme.lightPurple,
                                index: 1,
                                title: 'RGB LED',
                                imageUrl:
                                    'assets/images/icons8-rgb-lamp-96.png',
                                onTap: () {
                                  Get.to(() => RGBview);
                                },
                              ),
                            ],
                          ),
                          SizedBox(height: size.height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SmartSystem(
                                color: ColorTheme.lightYellow,
                                index: 2,
                                title: 'Music Player',
                                imageUrl:
                                    'assets/images/icons8-music-record-96.png',
                                onTap: () {},
                              ),
                              SmartSystem(
                                color: ColorTheme.lightPeach,
                                index: 3,
                                title: 'Music Player',
                                imageUrl:
                                    'assets/images/icons8-music-light-96.png',
                                onTap: () {},
                              ),
                            ],
                          ),
                        ],
                      );
                    })
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class FeederBanner extends GetView<MainController> {
  final MainController controller = Get.put(MainController());
  final double? horizontalPadding;
  final String? img;
  final String? title;
  final Widget? child;

  FeederBanner({
    required this.img,
    required this.title,
    required this.horizontalPadding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.08,
      width: Get.width * 0.38,
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border.all(
          color: Theme.of(context).primaryColor,
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage(
              img!,
            ),
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Spacer(flex: 4),
              child!,
              Spacer(flex: 2),
              Text(
                title!,
                style: MainFeTextTheme.kSub2HeadTextStyle.copyWith(
                  color: Theme.of(context).primaryColorDark,
                  fontSize: 12,
                ),
              ),
              Spacer(flex: 4),
            ],
          ),
        ],
      ),
    );
  }
}
