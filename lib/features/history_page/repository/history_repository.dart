import 'package:cats/features/history_page/storage/adaptors/history_data.dart';
import 'package:cats/features/shared/use_cases/open_history_box_use_case.dart';
import 'package:cats/features/shared/use_cases/use_case.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:cats/services/analytics_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:either_dart/either.dart';

class HistoryRepository {
  HistoryRepository() : _openHistoryBoxUseCase = OpenHistoryBoxUseCase();
  final OpenHistoryBoxUseCase _openHistoryBoxUseCase;

  Future<void> addFact(String fact) async {
    try {
      final historyBox = await _openHistoryBoxUseCase.call(NoParams());
      historyBox.add(HistoryData(text: fact, date: DateTime.now()));
      historyBox.close();
    } catch (e, s) {
      AnalyticsService.sendError(e, s);
    }
  }

  Future<Either<String, List<HistoryData>>> fetchFact() async {
    try {
      final historyBox = await _openHistoryBoxUseCase.call(NoParams());
      final historyData = historyBox.values.toList();
      historyBox.close();
      return Right(historyData.cast<HistoryData>());
    } catch (e, s) {
      AnalyticsService.sendError(e, s);
      return Left(LocaleKeys.load_failure_default.tr());
    }
  }

  Future<Either<String, bool>> deleteFacts() async {
    try {
      final historyBox = await _openHistoryBoxUseCase.call(NoParams());
      historyBox.clear();
      return const Right(true);
    } catch (e, s) {
      AnalyticsService.sendError(e, s);
      return Left(LocaleKeys.load_failure_default.tr());
    }
  }
}
