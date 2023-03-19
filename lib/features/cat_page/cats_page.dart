import 'package:cats/config/palette.dart';
import 'package:cats/config/text_styles.dart';
import 'package:cats/features/cat_page/bloc/find_cats_bloc.dart';
import 'package:cats/features/cat_page/repository/find_cats_repository.dart';
import 'package:cats/features/widgets/app_bars/main_app_bar.dart';
import 'package:cats/generated_assets/assets.gen.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CatsPage extends StatelessWidget {
  const CatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return BlocProvider(
      create: (context) {
        return FindCatsBloc(findCatsRepository: FindCatsRepository())
          ..add(const FindCatsEvent.init());
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
                Stack(
                  children: [
                    SizedBox(
                      height: height / 2,
                    ),
                    CatImage(
                      height: height,
                    ),
                  ],
                ),
                const Center(
                  child: CatFact(),
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

class FindCatButton extends StatelessWidget {
  const FindCatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
      onPressed: () {
        context.read<FindCatsBloc>().add(const FindCatsEvent.addSearch());
      },
      child: Text(
        LocaleKeys.button_text.tr(),
        style: TextStyles.style18w500(Palette.white),
      ),
    );
  }
}

class CatFact extends StatelessWidget {
  const CatFact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindCatsBloc, FindCatsState>(builder: (context, state) {
      return state.when(
        loading: () {
          return Center(
              child: Text(
            LocaleKeys.loading_text.tr(),
            style: TextStyles.style18w600(Palette.cadetGrey),
          ));
        },
        loaded: (fact, _) {
          return Padding(
            padding: const EdgeInsets.only(
                top: 15.0, right: 15, left: 15, bottom: 65),
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
    });
  }
}

class CatImage extends StatelessWidget {
  const CatImage({Key? key, required this.height}) : super(key: key);
  final double height;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindCatsBloc, FindCatsState>(
      builder: (context, state) {
        return state.maybeMap(
          loaded: (state) {
            return Stack(
              children: [
                SizedBox(
                  height: height / 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Image.network(
                    state.photoUrl,
                    height: height / 2,
                    fit: BoxFit.cover,
                    repeat: ImageRepeat.repeat,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(40.0),
                          child: child,
                        );
                      }
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: height / 4),
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        Assets.images.errorCat.path,
                      );
                    },
                  ),
                ),
              ],
            );
          },
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}
