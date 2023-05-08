// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_membership_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserMembershipInfoDTO _$$_UserMembershipInfoDTOFromJson(
        Map<String, dynamic> json) =>
    _$_UserMembershipInfoDTO(
      id: json['id'] as int,
      membershipStartTime: json['membershipStartTime'] as String,
      membershipEndTime: json['membershipEndTime'] as String,
      price: json['price'] as int,
      paymentTime: json['paymentTime'] as String,
      membership:
          Membership.fromJson(json['membership'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserMembershipInfoDTOToJson(
        _$_UserMembershipInfoDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membershipStartTime': instance.membershipStartTime,
      'membershipEndTime': instance.membershipEndTime,
      'price': instance.price,
      'paymentTime': instance.paymentTime,
      'membership': instance.membership,
    };
