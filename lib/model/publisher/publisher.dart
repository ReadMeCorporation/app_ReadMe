import 'package:intl/intl.dart';

class Publisher {
  final int id;
  final String username;
  final String role;
  final String businessNumber;
  final String businessName;
  final String joinTime;

  Publisher(
      {required this.id,
      required this.username,
      required this.role,
      required this.businessNumber,
      required this.businessName,
      required this.joinTime});

  factory Publisher.fromJson(Map<String, dynamic> json) {
    return Publisher(
      id: json['id'],
      username: json['username'],
      role: json['role'],
      businessNumber: json['businessNumber'],
      businessName: json['businessName'],
      joinTime: json['joinTime'],
      // joinTime: DateFormat("yyyy-mm-dd").parse(json['joinTime']),
    );
  }
}
