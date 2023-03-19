import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:flutter/material.dart';

class AppBarTitleWidget extends StatelessWidget {
  const AppBarTitleWidget({Key? key, required this.title, this.titleStyle})
      : super(key: key);
  final String title;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        title,
        style: titleStyle ??
            TextStyles.style22w400(
              Palette.eerieBlack.withOpacity(0.65),
              1.1,
            ),
      ),
    );
  }
}
