import 'package:cats/config/bloc/bloc_observer.dart';
import 'package:cats/config/theme.dart';
import 'package:cats/features/cat_page/cats_page.dart';
import 'package:cats/lang/gen/codegen_loader.g.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:cats/services/adaptors_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  AdaptorsService.registerAdaptors();

  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      path: 'lib/lang',
      fallbackLocale: const Locale('en'),
      useOnlyLangCode: true,
      supportedLocales: const [
        Locale('en'),
      ],
      assetLoader: const CodegenLoader(),
      child: const CatsApp(),
    ),
  );
}

class CatsApp extends StatelessWidget {
  const CatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (BuildContext context, Widget? child) {
        final data = MediaQuery.of(context);
        return MediaQuery(
          data: data.copyWith(
            textScaleFactor:
                data.textScaleFactor >= 1.2 ? 1.2 : data.textScaleFactor,
          ),
          child: child!,
        );
      },
      title: LocaleKeys.app_title.tr(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: Themes.light,
      home: const CatsPage(),
    );
  }
}
