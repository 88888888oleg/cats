import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  /// Like this: 19th Aug or 1th Aug
  String formatDate() {
    return DateFormat("d'${_suffix()}' MMMM ").format(this) + formatTime();
  }

  ///  Like this: 12:30pm
  String formatTime() {
    final t = DateFormat.jm().format(this).toLowerCase().split(' ')
      ..removeWhere((e) => e == ' ');
    final r = t.join();
    return r;
  }

  _suffix() {
    String suffix = "th";
    final digit = day % 10;
    if ((digit > 0 && digit < 4) && (day < 11 || day > 13)) {
      suffix = ["st", "nd", "rd"][digit - 1];
    }
    return suffix;
  }
}
