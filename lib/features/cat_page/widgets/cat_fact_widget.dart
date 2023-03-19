import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:cats/features/cat_page/bloc/find_cats_bloc.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatFactWidget extends StatelessWidget {
  const CatFactWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindCatsBloc, FindCatsState>(
      builder: (context, state) {
        return state.when(
          loading: () {
            return Center(
              child: Text(
                LocaleKeys.loading_text.tr(),
                style: TextStyles.style18w600(Palette.cadetGrey),
              ),
            );
          },
          loaded: (fact, _) {
            return Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                right: 15.0,
                left: 15.0,
                bottom: 75.0,
              ),
              child: Center(
                child: Text(
                  fact,
                  style: TextStyles.style18w600(Palette.darkMidnightBlue),
                ),
              ),
            );
          },
          error: (e) {
            return Center(child: Text(e));
          },
        );
      },
    );
  }
}
