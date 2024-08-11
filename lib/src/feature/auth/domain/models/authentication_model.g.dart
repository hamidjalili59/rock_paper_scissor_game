// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) =>
    AuthenticationModel(
      name: json['name'] as String,
      image: json['image'] as String?,
      score: (json['score'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AuthenticationModelToJson(
        AuthenticationModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'score': instance.score,
    };
