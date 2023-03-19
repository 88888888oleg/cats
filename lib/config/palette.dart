import 'package:flutter/material.dart';

class Palette {
  static Color get transparent => Colors.transparent;

  static const MaterialColor blue =
      MaterialColor(_bluebonnetPrimaryValue, <int, Color>{
    50: Color(0xFFE0E4FF),
    100: Color(0xFFDCE1FF),
    200: Color(0xFF8090FF),
    300: Color(0xFF304CFE),
    400: Color(0xFF2642FF),
    500: Color(_bluebonnetPrimaryValue),
    600: Color(0xFF001DFF),
    700: Color(0xFF0018FF),
    800: Color(0xFF0014FF),
    900: Color(0xFF000BFF),
  });
  static const int _bluebonnetPrimaryValue = 0xFF0021FF;

  static const MaterialColor white =
      MaterialColor(_whitePrimaryValue, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(_whitePrimaryValue),
    600: Color(0xFFF0F0F0),
    700: Color(0xFFE0E0E0),
    800: Color(0xFFD1D1D1),
    900: Color(0xFFC2C2C2),
  });
  static const int _whitePrimaryValue = 0xFFFFFFFF;

  static const MaterialColor eerieBlack =
      MaterialColor(_eerieBlackPrimaryValue, <int, Color>{
    50: Color(0xFFE4E4E4),
    100: Color(0xFFBBBBBB),
    200: Color(0xFF8E8E8D),
    300: Color(0xFF61615F),
    400: Color(0xFF3F3F3D),
    500: Color(_eerieBlackPrimaryValue),
    600: Color(0xFF1A1A18),
    700: Color(0xFF151514),
    800: Color(0xFF111110),
    900: Color(0xFF0A0A08),
  });
  static const int _eerieBlackPrimaryValue = 0xFF1D1D1B;

  static const MaterialColor cultured =
      MaterialColor(_culturedPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEFE),
    100: Color(0xFFFBFCFD),
    200: Color(0xFFF9FAFB),
    300: Color(0xFFF7F8F9),
    400: Color(0xFFF5F7F8),
    500: Color(_culturedPrimaryValue),
    600: Color(0xFFF1F4F6),
    700: Color(0xFFEFF2F5),
    800: Color(0xFFEDF0F3),
    900: Color(0xFFEAEEF1),
  });
  static const int _culturedPrimaryValue = 0xFFF3F5F7;

  static const MaterialColor orchidPink =
      MaterialColor(_orchidPinkPrimaryValue, <int, Color>{
    50: Color(0xFFFEF8F9),
    100: Color(0xFFFBECEF),
    200: Color(0xFFF9E0E5),
    300: Color(0xFFF7D4DB),
    400: Color(0xFFF5CAD3),
    500: Color(_orchidPinkPrimaryValue),
    600: Color(0xFFF1BBC6),
    700: Color(0xFFEFB3BE),
    800: Color(0xFFEDABB8),
    900: Color(0xFFEA9EAC),
  });
  static const int _orchidPinkPrimaryValue = 0xFFF3C1CB;

  static const MaterialColor cadetGrey =
      MaterialColor(_cadetGreyPrimaryValue, <int, Color>{
    50: Color(0xFFF3F4F6),
    100: Color(0xFFE1E5E8),
    200: Color(0xFFCDD3D9),
    300: Color(0xFFB8C1CA),
    400: Color(0xFFA9B4BE),
    500: Color(_cadetGreyPrimaryValue),
    600: Color(0xFF929FAC),
    700: Color(0xFF8896A3),
    800: Color(0xFF7E8C9A),
    900: Color(0xFF6C7C8B),
  });
  static const int _cadetGreyPrimaryValue = 0xFF9AA7B3;

  static const MaterialColor darkMidnightBlue =
      MaterialColor(_darkMidnightBluePrimaryValue, <int, Color>{
    50: Color(0xFFE2E8EC),
    100: Color(0xFFB6C5CF),
    200: Color(0xFF869FAF),
    300: Color(0xFF56798E),
    400: Color(0xFF315C76),
    500: Color(_darkMidnightBluePrimaryValue),
    600: Color(0xFF0B3956),
    700: Color(0xFF09314C),
    800: Color(0xFF072942),
    900: Color(0xFF031B31),
  });
  static const int _darkMidnightBluePrimaryValue = 0xFF0D3F5E;
}
