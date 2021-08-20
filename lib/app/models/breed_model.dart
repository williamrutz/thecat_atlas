import 'package:json_annotation/json_annotation.dart';

import 'image_model.dart';
import 'weight_model.dart';

part 'breed_model.g.dart';

@JsonSerializable()
class BreedModel {
  String id;
  Image? image;
  String name;
  String description;
  String origin;
  String life_span;
  String temperament;
  int adaptability;
  int affection_level;
  int child_friendly;
  int grooming;
  int health_issues;
  int intelligence;
  int social_needs;
  int stranger_friendly;
  
  BreedModel({
    required this.id,
    this.image,
    required this.name,
    required this.description,
    required this.origin,
    required this.life_span,
    required this.temperament,
    required this.adaptability,
    required this.affection_level,
    required this.child_friendly,
    required this.grooming,
    required this.health_issues,
    required this.intelligence,
    required this.social_needs,
    required this.stranger_friendly,
  });


  factory BreedModel.fromJson(Map<String, dynamic> json) =>
      _$BreedModelFromJson(json);
  Map<String, dynamic> toJson() => _$BreedModelToJson(this);

  @override
  String toString() {
    return "Skills > ${adaptability}<->${affection_level}<->${child_friendly}<->${grooming}<->${intelligence}<->${health_issues}<->${social_needs}<->${stranger_friendly}";
  }
}
