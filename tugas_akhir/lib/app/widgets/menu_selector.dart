import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../styles/text_theme.dart';
import 'package:flutter_svg/svg.dart';

class MenuSelector extends StatelessWidget {
  final String menuName;
  final String menuImageURL;
  final bool isSelected;
  final Function onTap;
  const MenuSelector({
    Key? key,
    required this.menuName,
    required this.menuImageURL,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.height * 0.11,
      height: Get.height * 0.2,
      child: Column(
        children: [
          Container(
            height: Get.height * 0.083,
            width: Get.height * 0.083,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).scaffoldBackgroundColor,
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          SizedBox(
            height: Get.height * 0.01,
          ),
          Text(
            menuName,
            style: MainFeTextTheme.kSub2HeadTextStyle.copyWith(
              color: Theme.of(context).primaryColorDark,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
