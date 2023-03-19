import 'package:cats/config/palette.dart';
import 'package:cats/features/settings/settings_page.dart';
import 'package:cats/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class AppBarHistoryWidget extends StatelessWidget {
  const AppBarHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        Navigator.push(
          context,
          HistoryPage.route(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          right: 18.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: SvgPicture.asset(
          Assets.svg.calendar,
          width: 17.5,
          colorFilter:
              const ColorFilter.mode(Palette.darkMidnightBlue, BlendMode.srcIn),
        ),
      ),
    );
  }
}
