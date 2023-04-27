import 'package:intl/intl.dart';
import 'package:readme_app/model/file_info/file_info.dart';

class User {
  final int id;
  final String username;
  final String role;
  final bool isMembership;
  final bool isAutoPayment;
  final DateTime joinTime;
  final String status;

  User(
      {required this.id,
      required this.username,
      required this.role,
      required this.isMembership,
      required this.isAutoPayment,
      required this.joinTime,
      required this.status});

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "role": role,
        "isMembership": isMembership,
        "isAutoPayment": isAutoPayment,
        "joinTime": joinTime,
        "status": status,
      };

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        role = json["role"],
        isMembership = json["isMembership"],
        isAutoPayment = json["isAutoPayment"],
        joinTime = DateFormat("yyyy-mm-dd").parse(json["joinTime"]),
        status = json["status"];
}
