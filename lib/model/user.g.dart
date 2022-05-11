// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      User._stringToInt(json['id'] as String?),
      json['name'] as String,
      json['assets_name'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': User._stringFromInt(instance.id),
      'name': instance.name,
      'assets_name': instance.assetsName,
    };
