import 'package:cats/features/cat_page/api/api_client.dart';
import 'package:cats/features/cat_page/model/cat_fact.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:either_dart/either.dart';

class FindCatsRepository {
  Future<Either<String, CatFact>> findFact() async {
    try {
      final facts = await ApiClient.catFactsApiClient().getFacts();
      return Right(facts);
    } catch (e) {
      return Left(LocaleKeys.load_failure_default.tr());
    }
  }
}
