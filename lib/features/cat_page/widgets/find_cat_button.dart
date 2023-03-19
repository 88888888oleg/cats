import 'package:cats/features/cat_page/bloc/find_cats_bloc.dart';
import 'package:cats/features/widgets/buttons/main_button.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindCatButton extends StatelessWidget {
  const FindCatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: () {
        context.read<FindCatsBloc>().add(const FindCatsEvent.addSearch());
      },
      title: LocaleKeys.button_text.tr(),
    );
  }
}
