// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "app_title": "Cats",
  "back": "Back",
  "button_text": "Get more cats...",
  "cats_page_title": "Cats...",
  "history_page_title": "History",
  "history_page_empty_message": "History is empty.",
  "history_page_button_title": "Delete history",
  "loading_text": "Loading...",
  "load_failure_default": "Something went wrong",
  "start_text": "Cats nice!"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en};
}
