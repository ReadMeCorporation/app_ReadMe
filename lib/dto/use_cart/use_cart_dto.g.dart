// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'use_cart_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UseCartDTO _$$_UseCartDTOFromJson(Map<String, dynamic> json) =>
    _$_UseCartDTO(
      cartDTO: CartDTO.fromJson(json['cartDTO'] as Map<String, dynamic>),
      isChecked: json['isChecked'] as bool,
    );

Map<String, dynamic> _$$_UseCartDTOToJson(_$_UseCartDTO instance) =>
    <String, dynamic>{
      'cartDTO': instance.cartDTO,
      'isChecked': instance.isChecked,
    };
