// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breed_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BreedModel _$BreedModelFromJson(Map<String, dynamic> json) {
  return BreedModel(
    id: json['id'] as String,
    image: json['image'] == null
        ? null
        : Image.fromJson(json['image'] as Map<String, dynamic>),
    name: json['name'] as String,
    description: json['description'] as String,
    origin: json['origin'] as String,
    life_span: json['life_span'] as String,
    temperament: json['temperament'] as String,
    adaptability: json['adaptability'] as int,
    affection_level: json['affection_level'] as int,
    child_friendly: json['child_friendly'] as int,
    grooming: json['grooming'] as int,
    health_issues: json['health_issues'] as int,
    intelligence: json['intelligence'] as int,
    social_needs: json['social_needs'] as int,
    stranger_friendly: json['stranger_friendly'] as int,
  );
}

Map<String, dynamic> _$BreedModelToJson(BreedModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'origin': instance.origin,
      'life_span': instance.life_span,
      'temperament': instance.temperament,
      'adaptability': instance.adaptability,
      'affection_level': instance.affection_level,
      'child_friendly': instance.child_friendly,
      'grooming': instance.grooming,
      'health_issues': instance.health_issues,
      'intelligence': instance.intelligence,
      'social_needs': instance.social_needs,
      'stranger_friendly': instance.stranger_friendly,
    };
