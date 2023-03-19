import 'package:cats/features/cat_page/bloc/find_cats_bloc.dart';
import 'package:cats/features/cat_page/repository/find_cats_repository.dart';
import 'package:cats/features/cat_page/widgets/cat_fact_widget.dart';
import 'package:cats/features/cat_page/widgets/find_cat_button.dart';
import 'package:cats/features/history_page/repository/history_repository.dart';
import 'package:cats/features/widgets/app_bars/main_app_bar.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/cat_image_widget.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) {
        return FindCatsBloc(
          findCatsRepository: FindCatsRepository(),
          historyRepository: HistoryRepository(),
        )..add(const FindCatsEvent.init());
      },
      child: SafeArea(
        child: Scaffold(
          appBar: MainAppBar(
            title: LocaleKeys.cats_page_title.tr(),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: height / 2,
                    ),
                    CatImageWidget(
                      height: height,
                    ),
                  ],
                ),
                const Center(
                  child: CatFactWidget(),
                ),
              ],
            ),
          ),
          bottomSheet: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: FindCatButton(),
          ),
        ),
      ),
    );
  }
}
