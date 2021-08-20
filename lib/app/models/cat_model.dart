import 'package:json_annotation/json_annotation.dart';

part 'cat_model.g.dart';

@JsonSerializable()
class CatModel {

  String id;
  String url;

  CatModel({
    required this.id,
    required this.url,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => _$CatModelFromJson(json);
  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
