import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas_akhir/app/styles/app_colors.dart';
import 'package:tugas_akhir/app/widgets/CustomWidgets/custom_input.dart';

class CustomAlertDialog {
  static confirmAdmin({
    required String title,
    required String message,
    required void Function() onConfirm,
    required void Function() onCancel,
    required TextEditingController controller,
  }) {
    Get.defaultDialog(
      title: " ",
      contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      radius: 8,
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  message,
                  style: TextStyle(
                    color: AppColors.secondarySoft,
                    height: 150 / 100,
                  ),
                )
              ],
            ),
          ),
          CustomInput(
            margin: EdgeInsets.only(bottom: 24),
            controller: controller,
            label: 'password',
            hint: '******',
            obsecureText: true,
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onCancel,
                    child: Text(
                      "cancel",
                      style: TextStyle(color: AppColors.secondarySoft),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      primary: AppColors.primaryExtraSoft,
                      elevation: 0,
                      onPrimary: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onConfirm,
                    child: Text("confirm"),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primary,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      elevation: 0,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  static showFeederAlert(
      {required String title,
      required String message,
      required void Function() onConfirm,
      required void Function() onCancel}) {
    Get.defaultDialog(
      title: " ",
      contentPadding: EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      radius: 8,
      titlePadding: EdgeInsets.zero,
      titleStyle: TextStyle(fontSize: 0),
      content: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 32, top: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  message,
                  style: TextStyle(
                    color: AppColors.secondarySoft,
                    height: 150 / 100,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onCancel,
                    child: Text(
                      "cancel",
                      style: TextStyle(color: AppColors.secondarySoft),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      primary: AppColors.primaryExtraSoft,
                      elevation: 0,
                      onPrimary: AppColors.primary,
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  flex: 6,
                  child: ElevatedButton(
                    onPressed: onConfirm,
                    child: Text("confirm"),
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primary,
                      padding: EdgeInsets.symmetric(vertical: 12),
                      elevation: 0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
