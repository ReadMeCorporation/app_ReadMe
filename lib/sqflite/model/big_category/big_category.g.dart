// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'big_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BigCategory _$$_BigCategoryFromJson(Map<String, dynamic> json) =>
    _$_BigCategory(
      id: json['id'] as int,
      name: json['name'] as String,
      smallCategory: (json['smallCategory'] as List<dynamic>?)
          ?.map((e) => SmallCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BigCategoryToJson(_$_BigCategory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'smallCategory': instance.smallCategory,
    };
