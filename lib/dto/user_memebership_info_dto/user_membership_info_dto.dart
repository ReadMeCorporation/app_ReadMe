import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/model/membership/membership.dart';

part 'user_membership_info_dto.freezed.dart';
part 'user_membership_info_dto.g.dart';

@unfreezed
class UserMembershipInfoDTO with _$UserMembershipInfoDTO {
  factory UserMembershipInfoDTO({
    required int id,
    required String membershipStartTime,
    required String membershipEndTime,
    required int price,
    required String paymentTime,
    required Membership membership
  }) = _UserMembershipInfoDTO;

  factory UserMembershipInfoDTO.fromJson(Map<String, Object?> json) => _$UserMembershipInfoDTOFromJson(json);

}

