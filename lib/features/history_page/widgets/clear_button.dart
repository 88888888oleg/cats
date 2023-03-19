import 'package:cats/features/history_page/bloc/history_bloc.dart';
import 'package:cats/features/widgets/buttons/main_button.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClearButton extends StatelessWidget {
  const ClearButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainButton(
      onPressed: () {
        context.read<HistoryBloc>().add(const HistoryEvent.deleteData());
      },
      title: LocaleKeys.history_page_button_title.tr(),
    );
  }
}
