import 'package:intl/intl.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'membership.freezed.dart';

part 'membership.g.dart';

@freezed
class Membership with _$Membership{
  factory Membership(
      {required int id,
        required int price,
        required String membershipTerm,
        required String status}) = _Membership;

  factory Membership.fromJson(Map<String, Object?> json) => _$MembershipFromJson(json);



}
