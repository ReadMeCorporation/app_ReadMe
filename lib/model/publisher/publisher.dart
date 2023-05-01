import 'package:intl/intl.dart';

class Publisher {
  final int id;
  final String username;
  final String role;
  final String businessNumber;
  final String businessName;
  final DateTime joinTime;
  final String status;

  Publisher(
      {required this.id,
      required this.username,
      required this.role,
      required this.businessNumber,
      required this.businessName,
      required this.joinTime,
      required this.status});


  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "role": role,
    "businessNumber": businessNumber,
    "businessName": businessName,
    "joinTime": joinTime,
    "status" : status,
  };


  Publisher.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        role = json["role"],
        businessNumber = json["businessNumber"],
        businessName = json["businessName"],
        joinTime = DateFormat("yyyy-mm-dd").parse(json["filepath"]),
        status = json["status"];

}
