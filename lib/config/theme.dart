import 'package:cats/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Themes {
  static ThemeData light = ThemeData(
    primarySwatch: Palette.blue,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    dividerColor: Palette.transparent,
  );
}
