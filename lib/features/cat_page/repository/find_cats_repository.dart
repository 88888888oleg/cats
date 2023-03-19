import 'package:cats/config/urls/api_path.dart';
import 'package:cats/features/cat_page/api/cat_fact_api.dart';
import 'package:cats/features/cat_page/model/cat_fact.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:either_dart/either.dart';

class FindCatsRepository {
  final _client = CatFactApi(
    Dio(
      BaseOptions(
        contentType: "application/json",
        baseUrl: ApiPath.catsFactsUrl,
      ),
    ),
  );

  Future<Either<String, CatFact>> findFact() async {
    try {
      var facts = await _client.getFacts();
      return Right(facts);
    } catch (e) {
      return Left(LocaleKeys.load_failure_default.tr());
    }
  }
}
