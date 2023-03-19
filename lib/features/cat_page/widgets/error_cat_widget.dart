import 'package:cats/generated_assets/assets.gen.dart';
import 'package:flutter/material.dart';

class ErrorCatWidget extends StatelessWidget {
  const ErrorCatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Assets.images.errorCat.path,
    );
  }
}
