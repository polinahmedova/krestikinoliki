// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewUserImpl _$$NewUserImplFromJson(Map<String, dynamic> json) =>
    _$NewUserImpl(
      private_key: json['private_key'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewUserImplToJson(_$NewUserImpl instance) =>
    <String, dynamic>{
      'private_key': instance.private_key,
      'user': instance.user,
    };
