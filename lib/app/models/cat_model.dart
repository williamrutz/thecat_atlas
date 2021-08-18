import 'package:json_annotation/json_annotation.dart';

import 'package:thecat_atlas/app/models/breed_model.dart';

part 'cat_model.g.dart';

@JsonSerializable()
class CatModel {

  String id;
  String url;
  int width;
  int height;

  CatModel({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => _$CatModelFromJson(json);
  Map<String, dynamic> toJson() => _$CatModelToJson(this);
}
