import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tokens_model.g.dart';

@HiveType(typeId: 0)
@JsonSerializable()
class TokensModel {
  @HiveField(0)
  @JsonKey(name: 'accessToken')
  final String accessToken;
  @HiveField(1)
  @JsonKey(name: 'refreshToken')
  final String refreshToken;

  TokensModel({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensModel.fromJson(Map<String, dynamic> json) =>
      _$TokensModelFromJson(json);

  Map<String, dynamic> toJson() => _$TokensModelToJson(this);
}