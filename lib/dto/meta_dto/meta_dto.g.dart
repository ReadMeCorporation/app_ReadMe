// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MetaDTO _$$_MetaDTOFromJson(Map<String, dynamic> json) => _$_MetaDTO(
      bigCategory: (json['bigCategory'] as List<dynamic>)
          .map((e) => BigCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      storageBoxTabs: (json['storageBoxTabs'] as List<dynamic>)
          .map((e) => CommonDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      mainTabs: (json['mainTabs'] as List<dynamic>)
          .map((e) => CommonDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentTabs: (json['paymentTabs'] as List<dynamic>)
          .map((e) => CommonDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      notificationTypes: (json['notificationTypes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      jwt: json['jwt'] as String?,
    );

Map<String, dynamic> _$$_MetaDTOToJson(_$_MetaDTO instance) =>
    <String, dynamic>{
      'bigCategory': instance.bigCategory,
      'user': instance.user,
      'storageBoxTabs': instance.storageBoxTabs,
      'mainTabs': instance.mainTabs,
      'paymentTabs': instance.paymentTabs,
      'notificationTypes': instance.notificationTypes,
      'jwt': instance.jwt,
    };

_$_CommonDTO _$$_CommonDTOFromJson(Map<String, dynamic> json) => _$_CommonDTO(
      requestName: json['requestName'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_CommonDTOToJson(_$_CommonDTO instance) =>
    <String, dynamic>{
      'requestName': instance.requestName,
      'name': instance.name,
    };
