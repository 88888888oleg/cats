import 'package:cats/features/history_page/storage/adaptors/history_data.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class AdaptorsService {
  static void registerAdaptors() {
    Hive.registerAdapter<HistoryData>(HistoryDataAdapter());
  }
}
