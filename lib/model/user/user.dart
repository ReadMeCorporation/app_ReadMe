import 'package:intl/intl.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'user.freezed.dart';

part 'user.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class User with _$User {
  const factory User(
      {required int id,
      required String username,
      required String role,
      required bool isMembership,
      required bool isAutoPayment,
      required DateTime joinTime,
      required String status}) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
