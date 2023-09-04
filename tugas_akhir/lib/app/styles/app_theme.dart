import 'package:tugas_akhir/app/styles/color_theme.dart';
import 'package:flutter/material.dart';

enum AppTheme {
  PinkLight,
  PinkDark,
}

final appThemeData = {
  AppTheme.PinkLight: ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorTheme.primaryPink,
    hintColor: ColorTheme.primaryPink.withOpacity(0.3),
    scaffoldBackgroundColor: ColorTheme.white1,
    primaryColorLight: ColorTheme.secondaryPink,
    primaryColorDark: ColorTheme.secondaryGrey,
    colorScheme: ColorScheme.light(
      primary: ColorTheme.primaryPink,
    ),
  ),
  AppTheme.PinkDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorTheme.secondaryPink,
    hintColor: ColorTheme.secondaryPink.withOpacity(0.3),
    scaffoldBackgroundColor: ColorTheme.primaryGrey,
    primaryColorDark: ColorTheme.white2,
    primaryColorLight: ColorTheme.secondaryGrey,
    colorScheme: ColorScheme.dark(
      primary: ColorTheme.secondaryPink,
    ),
  )
};
