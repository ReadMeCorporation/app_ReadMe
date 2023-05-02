// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'publisher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Publisher _$$_PublisherFromJson(Map<String, dynamic> json) => _$_Publisher(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      businessNumber: json['businessNumber'] as String,
      businessName: json['businessName'] as String,
      joinTime: json['joinTime'] as String,
    );

Map<String, dynamic> _$$_PublisherToJson(_$_Publisher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'role': instance.role,
      'businessNumber': instance.businessNumber,
      'businessName': instance.businessName,
      'joinTime': instance.joinTime,
    };
