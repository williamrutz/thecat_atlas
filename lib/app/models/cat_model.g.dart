// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatModel _$CatModelFromJson(Map<String, dynamic> json) {
  return CatModel(
    id: json['id'] as String,
    url: json['url'] as String,
    breed: (json['breeds'] as List<dynamic>)
        .map((e) => BreedModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CatModelToJson(CatModel instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'breeds': instance.breed,
    };
