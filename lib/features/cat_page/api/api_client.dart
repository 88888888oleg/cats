import 'package:cats/config/urls/api_path.dart';
import 'package:cats/features/cat_page/api/cat_fact_api.dart';
import 'package:dio/dio.dart';

abstract class ApiClient {
  static CatFactApi catFactsApiClient() {
    return CatFactApi(
      Dio(
        BaseOptions(
          contentType: "application/json",
          baseUrl: ApiPath.catsFactsUrl,
        ),
      ),
    );
  }
}
