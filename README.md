# cats

- Demo video (<https://youtu.be/Wy9DlrpDfyw>).

- Install (<https://flutter.dev/docs/get-started/install>).

- To verify proper installation
```sh
flutter doctor -v
```

## Tools

- VSCode (<https://code.visualstudio.com/download>).
- VSCode Extensions
    - Flutter (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter>)
    - Dart (<https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code>)

- Android Studio
    - Enable Flutter and Dart plugins in settings

## Run Locally

- Configure local development environment:
```sh
flutter pub get
```

- Run in debug mode (log enabled):
```sh
flutter run
```

- Run in release mode (log disabled):
```sh
flutter run --release
```

## Code generator "build_runner"
```sh
flutter pub run build_runner build
```

- To remove conflicts
```sh
flutter pub run build_runner build --delete-conflicting-outputs
```

- To watch changes
```sh
flutter pub run build_runner watch
```

## Translations

- To add text to an application, put a key-value pair in a file lib/lang/en.json and run:

```sh
flutter pub run easy_localization:generate --source-dir lib/lang -O lib/lang/gen
```

- And after that run:

```sh
flutter pub run easy_localization:generate -f keys --source-dir lib/lang -O lib/lang/gen -o locale_keys.g.dart
```

- And use in code:

```sh
LocaleKeys.you_new_key.tr();
```