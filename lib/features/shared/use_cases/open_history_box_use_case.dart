import 'package:cats/features/history_page/storage/adaptors/history_data.dart';
import 'package:cats/features/shared/use_cases/use_case.dart';
import 'package:hive_flutter/hive_flutter.dart';

class OpenHistoryBoxUseCase implements UseCase<Box<HistoryData>, NoParams> {
  static const boxName = 'historyDataBox';
  @override
  Future<Box<HistoryData>> call(NoParams params) async {
    return await Hive.openBox<HistoryData>(boxName);
  }
}
