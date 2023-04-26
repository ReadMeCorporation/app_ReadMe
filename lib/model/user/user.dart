import 'package:intl/intl.dart';

class User {
  final int id;
  final String username;
  final DateTime created;

  User({required this.id, required this.username, required this.created});

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "created": created
  };

  User.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        username = json["username"],
        created = DateFormat("yyyy-mm-dd").parse(json["created"]);
}
