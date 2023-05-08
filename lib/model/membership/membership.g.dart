// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Membership _$$_MembershipFromJson(Map<String, dynamic> json) =>
    _$_Membership(
      id: json['id'] as int,
      price: json['price'] as int,
      membershipTerm: json['membershipTerm'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_MembershipToJson(_$_Membership instance) =>
    <String, dynamic>{
      'id': instance.id,
      'price': instance.price,
      'membershipTerm': instance.membershipTerm,
      'status': instance.status,
    };
