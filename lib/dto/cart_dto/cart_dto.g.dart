// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CartDTO _$$_CartDTOFromJson(Map<String, dynamic> json) => _$_CartDTO(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      book: Book.fromJson(json['book'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartDTOToJson(_$_CartDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'book': instance.book,
    };
