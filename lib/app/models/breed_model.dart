import 'package:json_annotation/json_annotation.dart';

part 'breed_model.g.dart';

@JsonSerializable()
class BreedModel {

  String id;
  String name;
  String temperament;

  BreedModel({
    required this.id,
    required this.name,
    required this.temperament,
  });

  factory BreedModel.fromJson(Map<String, dynamic> json) => _$BreedModelFromJson(json);
  Map<String, dynamic> toJson() => _$BreedModelToJson(this);

  @override
  String toString() {
      return "($id,$name)";
  }
}
