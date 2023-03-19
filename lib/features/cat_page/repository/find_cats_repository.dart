import 'package:cats/config/urls/api_path.dart';
import 'package:cats/features/cat_page/api/cat_fact_api.dart';
import 'package:cats/features/cat_page/model/cat_fact.dart';
import 'package:dio/dio.dart';

class FindCatsRepository {
  final _client = CatFactApi(
    Dio(
      BaseOptions(
        contentType: "application/json",
        baseUrl: ApiPath.catsFactsUrl,
      ),
    ),
  );

  Future<CatFact> findFact() async {
    var facts = await _client.getFacts();
    return (facts);
  }
}
