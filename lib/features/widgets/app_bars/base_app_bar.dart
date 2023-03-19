import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget with PreferredSizeWidget {
  final Widget? leading;
  final bool centerTitle;
  final Widget? title;
  final List<Widget>? actions;
  final Color? backgroundColor;

  const BaseAppBar({
    Key? key,
    this.leading,
    this.centerTitle = true,
    this.title,
    this.actions,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      backgroundColor:
          backgroundColor ?? Theme.of(context).scaffoldBackgroundColor,
      elevation: 0.0,
      titleSpacing: 0.0,
      title: Padding(
        padding: EdgeInsets.only(
          left: leading != null ? 0 : 16.0,
        ),
        child: title,
      ),
      leading: leading,
      leadingWidth: 81.0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
