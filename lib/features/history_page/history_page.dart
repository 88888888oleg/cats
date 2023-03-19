import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:cats/features/history_page/bloc/history_bloc.dart';
import 'package:cats/features/history_page/repository/history_repository.dart';
import 'package:cats/features/history_page/widgets/clear_button.dart';
import 'package:cats/features/widgets/app_bars/main_app_bar.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:cats/utils/extensions/date_time_extension.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);
  static route() {
    return MaterialPageRoute(
      builder: (context) {
        return const HistoryPage();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return HistoryBloc(historyRepository: HistoryRepository())
          ..add(const HistoryEvent.init());
      },
      child: SafeArea(
        child: Scaffold(
          appBar: MainAppBar(
            needShowHistoryButton: false,
            needShowBackButton: true,
            title: LocaleKeys.history_page_title.tr(),
          ),
          body: BlocBuilder<HistoryBloc, HistoryState>(
            builder: (context, state) {
              return state.when(
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (historyFacts) {
                  return ListView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(
                      vertical: 6.0,
                    ),
                    itemCount: historyFacts.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          '   ${index + 1}. ${historyFacts[index].text}',
                          style:
                              TextStyles.style16w400(Palette.eerieBlack, 1.2),
                        ),
                        subtitle: Text(
                          historyFacts[index].date.formatDate(),
                          style: TextStyles.style12w400ul(Palette.cadetGrey),
                        ),
                      );
                    },
                  );
                },
                error: (error) {
                  return Text(
                    error,
                    style: TextStyles.style18w500ul(Palette.orchidPink),
                  );
                },
              );
            },
          ),
          bottomSheet: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: ClearButton(),
          ),
        ),
      ),
    );
  }
}
