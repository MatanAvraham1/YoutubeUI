import 'package:flutter/material.dart';

enum AppTheme { Dark, Light }

final appThemeData = {
  AppTheme.Light: ThemeData(
    primaryColor: Colors.white,
    brightness: Brightness.light,
  ),
  AppTheme.Dark: ThemeData(
    primaryColor: Colors.black,
    brightness: Brightness.dark,
  ),
};

bool isLightModeF(BuildContext context) {
  if (Theme.of(context).brightness == Brightness.light) return true;

  return false;
}
