import 'package:intl/intl.dart';

class Question {
  final int id;
  final String title;
  final String content;
  final int status;
  final DateTime time;

  Question(
      {required this.id, required this.title, required this.content, required this.status, required this.time});


  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "title": title,
        "content": content,
        "status": status,
        "time": time,
      };


  Question.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        status = json["status"],
        time = DateFormat("yyyy-mm-dd").parse(json["time"]);

}