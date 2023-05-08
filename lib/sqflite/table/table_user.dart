import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명


class TableUser {

  int id;
  String username;
  String role;
  bool isMembership;
  bool isAutoPayment;

  TableUser({
    required this.id,
    required this.username,
    required this.role,
    required this.isMembership,
    required this.isAutoPayment,
  });


  factory TableUser.fromJson(Map<String, Object?> json) {
    return TableUser(
      id: json['id'] as int,
      username: json['username'] as String,
      role: json['role'] as String,
      isMembership: json['isMembership'] as int == 1 ? true : false,
      isAutoPayment: json['isAutoPayment'] as int == 1 ? true : false,
    );
  }
}