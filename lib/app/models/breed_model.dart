import 'package:json_annotation/json_annotation.dart';

part 'breed_model.g.dart';

@JsonSerializable()
class BreedModel {

  String id;
  String name;
  String temperament;
  String life_span;
  String alt_names;
  String wikipedia_url;
  String origin;
  String weight_imperial;
  int experimental;
  int hairless;
  int natural;
  int rare;
  int rex;
  int suppress_tail;
  int short_legs;
  int hypoallergenic;
  int adaptability;
  int affection_level;
  String country_code;
  int child_friendly;
  int dog_friendly;
  int energy_level;
  int grooming;
  int health_issues;
  int intelligence;
  int shedding_level;
  int social_needs;
  int stranger_friendly;
  int vocalisation;

  BreedModel({
    required this.id,
    required this.name,
    required this.temperament,
    required this.life_span,
    required this.alt_names,
    required this.wikipedia_url,
    required this.origin,
    required this.weight_imperial,
    required this.experimental,
    required this.hairless,
    required this.natural,
    required this.rare,
    required this.rex,
    required this.suppress_tail,
    required this.short_legs,
    required this.hypoallergenic,
    required this.adaptability,
    required this.affection_level,
    required this.country_code,
    required this.child_friendly,
    required this.dog_friendly,
    required this.energy_level,
    required this.grooming,
    required this.health_issues,
    required this.intelligence,
    required this.shedding_level,
    required this.social_needs,
    required this.stranger_friendly,
    required this.vocalisation,
  });

  factory BreedModel.fromJson(Map<String, dynamic> json) => _$BreedModelFromJson(json);
  Map<String, dynamic> toJson() => _$BreedModelToJson(this);
}
