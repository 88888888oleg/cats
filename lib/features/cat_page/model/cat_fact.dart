import 'package:json_annotation/json_annotation.dart';

part 'cat_fact.g.dart';

@JsonSerializable()
class CatFact {
  CatFact({
    required this.length,
    required this.fact,
  });

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);

  int length;
  String fact;

  Map<String, dynamic> toJson() => _$CatFactToJson(this);
}
