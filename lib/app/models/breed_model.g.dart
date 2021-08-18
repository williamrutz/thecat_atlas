// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) {
  return BreedModel(
    id: json['id'] as String,
    name: json['name'] as String,
    temperament: json['temperament'] as String,
  );
}

Map<String, dynamic> _$BreedModelToJson(BreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'temperament': instance.temperament,
    };
