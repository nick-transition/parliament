import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:political_think/common/models/confidence.dart';
import 'package:political_think/common/util/utils.dart';

part 'photo.g.dart';

@JsonSerializable(explicitToJson: true)
class Photo {
  final String photoURL;
  final String? description;
  // does the photo work with the LLM?
  final bool? llmCompatible;

  Photo({
    required this.photoURL,
    this.description,
    this.llmCompatible,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}
