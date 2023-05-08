import 'package:intl/intl.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/membership/membership.dart';

// 파일명
part 'membership_payment.freezed.dart';

part 'membership_payment.g.dart';

@freezed
class MembershipPayment with _$MembershipPayment {
  factory MembershipPayment(
      {required int id,
        required Membership membership,
        required String membershipStartTime,
        required String membershipEndTime,
        required int price,
        required String paymentTime}) = _MembershipPayment;

  factory MembershipPayment.fromJson(Map<String, Object?> json) => _$MembershipPaymentFromJson(json);



}
