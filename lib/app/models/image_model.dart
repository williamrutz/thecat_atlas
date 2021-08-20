import 'package:json_annotation/json_annotation.dart';

part 'image_model.g.dart';

@JsonSerializable()
class Image {

  int? height;
  String? id;
  String? url;
  int? width;

  Image({this.height, this.id, this.url, this.width});

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
  Map<String, dynamic> toJson() => _$ImageToJson(this);
}