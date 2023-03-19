import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.onPressed, required this.title})
      : super(key: key);
  final Function onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {
        onPressed();
      },
      child: Text(
        title,
        style: TextStyles.style18w500(Palette.white),
      ),
    );
  }
}
