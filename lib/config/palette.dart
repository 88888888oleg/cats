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

  static Color get whiteWithOpacity01 => white.withOpacity(0.1);
  static Color get whiteWithOpacity02 => white.withOpacity(0.2);

  static Color get whiteWithOpacity04 => white.withOpacity(0.4);

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

  static const MaterialColor aliceBlue =
      MaterialColor(_aliceBlueValue, <int, Color>{
    50: Color(0xFFFDFEFF),
    100: Color(0xFFFBFCFF),
    200: Color(0xFFF9FAFF),
    300: Color(0xFFF6F7FF),
    400: Color(0xFFF4F6FF),
    500: Color(_aliceBlueValue),
    600: Color(0xFFF0F3FF),
    700: Color(0xFFEEF1FF),
    800: Color(0xFFECEFFF),
    900: Color(0xFFE8ECFF),
  });
  static const int _aliceBlueValue = 0xFFF2F4FF;

  static Color get eerieBlackWithAlpha65 => eerieBlack.withAlpha(165);

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

  static Color get marigoldWithDefaultOpacity => marigold.withOpacity(0.7);

  static const MaterialColor marigold =
      MaterialColor(_marigoldPrimaryValue, <int, Color>{
    50: Color(0xFFFDF4E3),
    100: Color(0xFFFBE4B9),
    200: Color(0xFFF9D28B),
    300: Color(0xFFF6C05D),
    400: Color(0xFFF4B33A),
    500: Color(_marigoldPrimaryValue),
    600: Color(0xFFF09D14),
    700: Color(0xFFEE9311),
    800: Color(0xFFEC8A0D),
    900: Color(0xFFE87907),
  });
  static const int _marigoldPrimaryValue = 0xFFF2A517;

  static Color get orangeSodaWithDefaultOpacity => orangeSoda.withOpacity(0.7);

  static const MaterialColor orangeSoda =
      MaterialColor(_orangeSodaPrimaryValue, <int, Color>{
    50: Color(0xFFFDEBE7),
    100: Color(0xFFFBCEC3),
    200: Color(0xFFF8AD9C),
    300: Color(0xFFF58C74),
    400: Color(0xFFF37456),
    500: Color(_orangeSodaPrimaryValue),
    600: Color(0xFFEF5332),
    700: Color(0xFFED492B),
    800: Color(0xFFEB4024),
    900: Color(0xFFE72F17),
  });
  static const int _orangeSodaPrimaryValue = 0xFFF15B38;

  static Color get middleBluePurpleWithDefaultOpacity =>
      middleBluePurple.withOpacity(0.7);

  static const MaterialColor middleBluePurple =
      MaterialColor(_middleBluePurplePrimaryValue, <int, Color>{
    50: Color(0xFFF2EEF7),
    100: Color(0xFFDFD5EC),
    200: Color(0xFFC9B9DF),
    300: Color(0xFFB39DD2),
    400: Color(0xFFA388C9),
    500: Color(_middleBluePurplePrimaryValue),
    600: Color(0xFF8B6BB9),
    700: Color(0xFF8060B1),
    800: Color(0xFF7656A9),
    900: Color(0xFF64439B),
  });
  static const int _middleBluePurplePrimaryValue = 0xFF9373BF;

  static Color get persianIndigoWithDefaultOpacity =>
      persianIndigo.withOpacity(0.7);

  static const MaterialColor persianIndigo =
      MaterialColor(_persianIndigoPrimaryValue, <int, Color>{
    50: Color(0xFFE6E4EF),
    100: Color(0xFFC2BBD7),
    200: Color(0xFF998EBD),
    300: Color(0xFF7061A2),
    400: Color(0xFF513F8E),
    500: Color(_persianIndigoPrimaryValue),
    600: Color(0xFF2D1A72),
    700: Color(0xFF261567),
    800: Color(0xFF1F115D),
    900: Color(0xFF130A4A),
  });
  static const int _persianIndigoPrimaryValue = 0xFF321D7A;

  static Color get orchidPinkWithDefaultOpacity => orchidPink.withOpacity(0.7);

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

  static const MaterialColor platinum =
      MaterialColor(_platinumPrimaryValue, <int, Color>{
    50: Color(0xFFFBFCFC),
    100: Color(0xFFF5F6F7),
    200: Color(0xFFEEF1F2),
    300: Color(0xFFE7EBED),
    400: Color(0xFFE2E6E9),
    500: Color(_platinumPrimaryValue),
    600: Color(0xFFD9DFE2),
    700: Color(0xFFD4DADE),
    800: Color(0xFFCFD6DA),
    900: Color(0xFFC7CFD3),
  });
  static const int _platinumPrimaryValue = 0xFFDDE2E5;

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

  static const MaterialColor brickRed =
      MaterialColor(_brickRedPrimaryValue, <int, Color>{
    50: Color(0xFFF8E8EA),
    100: Color(0xFFEDC5CC),
    200: Color(0xFFE19EAA),
    300: Color(0xFFD57787),
    400: Color(0xFFCC596E),
    500: Color(_brickRedPrimaryValue),
    600: Color(0xFFBD364D),
    700: Color(0xFFB52E43),
    800: Color(0xFFAE273A),
    900: Color(0xFFA11A29),
  });
  static const int _brickRedPrimaryValue = 0xFFC33C54;

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

  static const MaterialColor mediumSeaGreen =
      MaterialColor(_mediumSeaGreenPrimaryValue, <int, Color>{
    50: Color(0xFFE6F7ED),
    100: Color(0xFFC1ECD3),
    200: Color(0xFF98E0B6),
    300: Color(0xFF6ED399),
    400: Color(0xFF4FC983),
    500: Color(_mediumSeaGreenPrimaryValue),
    600: Color(0xFF2BBA65),
    700: Color(0xFF24B25A),
    800: Color(0xFF1EAA50),
    900: Color(0xFF139C3E),
  });
  static const int _mediumSeaGreenPrimaryValue = 0xFF30C06D;

  static Color get dimGrayWithDefaultOpacity => dimGray.withOpacity(0.2);

  static const MaterialColor dimGray =
      MaterialColor(_dimGrayPrimaryValue, <int, Color>{
    50: Color(0xFFEDEDED),
    100: Color(0xFFD2D2D2),
    200: Color(0xFFB4B4B4),
    300: Color(0xFF969695),
    400: Color(0xFF80807F),
    500: Color(_dimGrayPrimaryValue),
    600: Color(0xFF616160),
    700: Color(0xFF565655),
    800: Color(0xFF4C4C4B),
    900: Color(0xFF3B3B3A),
  });
  static const int _dimGrayPrimaryValue = 0xFF696968;

  static const MaterialColor antiFlashWhite =
      MaterialColor(_antiFlashWhitePrimaryValue, <int, Color>{
    50: Color(0xFFFDFDFD),
    100: Color(0xFFFBFBFB),
    200: Color(0xFFF8F8F8),
    300: Color(0xFFF5F5F5),
    400: Color(0xFFF3F3F3),
    500: Color(_antiFlashWhitePrimaryValue),
    600: Color(0xFFEFEFEF),
    700: Color(0xFFEDEDED),
    800: Color(0xFFEBEBEB),
    900: Color(0xFFE7E7E7),
  });
  static const int _antiFlashWhitePrimaryValue = 0xFFF1F1F1;

  static const MaterialColor darkyellow =
      MaterialColor(_darkyellowPrimaryValue, <int, Color>{
    50: Color(0xFFFEF4E3),
    100: Color(0xFFFEE4B8),
    200: Color(0xFFFDD389),
    300: Color(0xFFFCC15A),
    400: Color(0xFFFBB336),
    500: Color(_darkyellowPrimaryValue),
    600: Color(0xFFF99E11),
    700: Color(0xFFF9950E),
    800: Color(0xFFF88B0B),
    900: Color(0xFFF67B06),
  });
  static const int _darkyellowPrimaryValue = 0xFFFAA613;

  static const MaterialColor secondaryGray =
      MaterialColor(_secondaryGrayPrimaryValue, <int, Color>{
    50: Color(0xFFFEFEFE),
    100: Color(0xFFFCFCFC),
    200: Color(0xFFFBFBFB),
    300: Color(0xFFF9F9F9),
    400: Color(0xFFF7F7F7),
    500: Color(_secondaryGrayPrimaryValue),
    600: Color(0xFFF5F5F5),
    700: Color(0xFFF3F3F3),
    800: Color(0xFFF2F2F2),
    900: Color(0xFFEFEFEF),
  });
  static const int _secondaryGrayPrimaryValue = 0xFFF6F6F6;

  static const MaterialColor lightShadeBlue =
      MaterialColor(_lightshadebluePrimaryValue, <int, Color>{
    50: Color(0xFFFDFDFF),
    100: Color(0xFFFAFBFF),
    200: Color(0xFFF7F8FF),
    300: Color(0xFFF4F5FF),
    400: Color(0xFFF1F3FF),
    500: Color(_lightshadebluePrimaryValue),
    600: Color(0xFFEDEFFF),
    700: Color(0xFFEBEDFF),
    800: Color(0xFFE8EBFF),
    900: Color(0xFFE4E7FF),
  });
  static const int _lightshadebluePrimaryValue = 0xFFEFF1FF;

  static const MaterialColor tangerine =
      MaterialColor(_tangerinePrimaryValue, <int, Color>{
    50: Color(0xFFFBE9E3),
    100: Color(0xFFF4C9BA),
    200: Color(0xFFEDA58C),
    300: Color(0xFFE6815E),
    400: Color(0xFFE0663C),
    500: Color(_tangerinePrimaryValue),
    600: Color(0xFFD74416),
    700: Color(0xFFD23B12),
    800: Color(0xFFCD330E),
    900: Color(0xFFC42308),
  });
  static const int _tangerinePrimaryValue = 0xFFDB4B19;

  static const MaterialColor lightgray =
      MaterialColor(_lightgrayPrimaryValue, <int, Color>{
    50: Color(0xFFFAFAFA),
    100: Color(0xFFF4F4F4),
    200: Color(0xFFECECEC),
    300: Color(0xFFE4E4E4),
    400: Color(0xFFDFDFDF),
    500: Color(_lightgrayPrimaryValue),
    600: Color(0xFFD5D5D5),
    700: Color(0xFFCFCFCF),
    800: Color(0xFFCACACA),
    900: Color(0xFFC0C0C0),
  });
  static const int _lightgrayPrimaryValue = 0xFFD9D9D9;
}
