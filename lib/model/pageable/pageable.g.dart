// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pageable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pageable _$$_PageableFromJson(Map<String, dynamic> json) => _$_Pageable(
      sort: Sort.fromJson(json['sort'] as Map<String, dynamic>),
      pageSize: json['pageSize'] as int,
      pageNumber: json['pageNumber'] as int,
      offset: json['offset'] as int,
      paged: json['paged'] as bool,
      unpaged: json['unpaged'] as bool,
    );

Map<String, dynamic> _$$_PageableToJson(_$_Pageable instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'pageSize': instance.pageSize,
      'pageNumber': instance.pageNumber,
      'offset': instance.offset,
      'paged': instance.paged,
      'unpaged': instance.unpaged,
    };
