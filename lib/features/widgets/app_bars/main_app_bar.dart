import 'package:cats/config/palette.dart';
import 'package:cats/features/widgets/app_bars/widgets/app_bar_arrow_back_widget.dart';
import 'package:cats/features/widgets/app_bars/widgets/app_bar_title_widget.dart';
import 'package:cats/features/widgets/app_bars/base_app_bar.dart';
import 'package:cats/features/widgets/app_bars/widgets/app_bar_history_widget.dart';
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  final Color backgroundColor;
  final String title;
  final TextStyle? titleStyle;
  final Color buttonColor;
  final bool needShowBackButton;
  final bool needShowHistoryButton;
  final VoidCallback? leftButtonCallback;
  final List<Widget>? actions;

  const MainAppBar({
    Key? key,
    this.needShowBackButton = false,
    this.backgroundColor = Palette.white,
    required this.title,
    this.titleStyle,
    this.buttonColor = Palette.eerieBlack,
    this.leftButtonCallback,
    this.needShowHistoryButton = true,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseAppBar(
      leading: needShowBackButton
          ? AppBarArrowBackWidget(
              callback: leftButtonCallback ?? () => Navigator.pop(context),
            )
          : null,
      backgroundColor: backgroundColor,
      centerTitle: false,
      title: Center(
        child: AppBarTitleWidget(
          title: title,
          titleStyle: titleStyle,
        ),
      ),
      actions: [
        Center(
          child: needShowHistoryButton
              ? const AppBarHistoryWidget()
              : const SizedBox(
                  width: 50,
                ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
