import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmptyHistoryWidget extends StatelessWidget {
  const EmptyHistoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(LocaleKeys.history_page_empty_message.tr(),
        style: TextStyles.style18w500ul(Palette.orchidPink),
      ),
    );
  }
}
