import 'package:cats/features/cat_page/model/cat_fact.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'cat_fact_api.g.dart';

@RestApi()
abstract class CatFactApi {
  factory CatFactApi(Dio dio, {String baseUrl}) = _CatFactApi;

  @GET('/fact')
  Future<CatFact> getFacts();
}