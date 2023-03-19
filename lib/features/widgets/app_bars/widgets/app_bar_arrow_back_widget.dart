import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:cats/generated_assets/assets.gen.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarArrowBackWidget extends StatelessWidget {
  final Color? color;
  final VoidCallback? callback;

  const AppBarArrowBackWidget({
    Key? key,
    this.color = Palette.eerieBlack,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback ?? () => Navigator.pop(context),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Row(
          children: [
            SvgPicture.asset(
              Assets.svg.arrowLeft,
              width: 22.0,
              height: 22.0,
              colorFilter: ColorFilter.mode(
                color!,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Text(
              LocaleKeys.back.tr(),
              style: TextStyles.style18w400(color),
            ),
          ],
        ),
      ),
    );
  }
}
