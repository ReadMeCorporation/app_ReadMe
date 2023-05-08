// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'membership_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MembershipPayment _$$_MembershipPaymentFromJson(Map<String, dynamic> json) =>
    _$_MembershipPayment(
      id: json['id'] as int,
      membership:
          Membership.fromJson(json['membership'] as Map<String, dynamic>),
      membershipStartTime: json['membershipStartTime'] as String,
      membershipEndTime: json['membershipEndTime'] as String,
      price: json['price'] as int,
      paymentTime: json['paymentTime'] as String,
    );

Map<String, dynamic> _$$_MembershipPaymentToJson(
        _$_MembershipPayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'membership': instance.membership,
      'membershipStartTime': instance.membershipStartTime,
      'membershipEndTime': instance.membershipEndTime,
      'price': instance.price,
      'paymentTime': instance.paymentTime,
    };
