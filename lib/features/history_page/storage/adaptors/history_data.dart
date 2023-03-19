import 'package:hive/hive.dart';

part 'history_data.g.dart';

@HiveType(typeId: 1)
class HistoryData {

  @HiveField(0)
  final String text;

  @HiveField(1)
  final DateTime date;

  HistoryData({required this.text, required this.date});
}
