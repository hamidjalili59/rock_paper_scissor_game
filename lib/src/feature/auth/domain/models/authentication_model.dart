import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_model.g.dart';

@JsonSerializable()
class AuthenticationModel {
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'image')
  final String? image;
  @JsonKey(name: 'score',defaultValue: 0)
  final int score;

  AuthenticationModel({
    required this.name,
    this.image,
    this.score = 0,
  });

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationModelFromJson(json);

  Map<String, dynamic> toJson() => _$AuthenticationModelToJson(this);
}