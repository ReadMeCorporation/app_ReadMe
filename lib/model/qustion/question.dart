import 'package:intl/intl.dart';

class Question {
  final int id;
  final String title;
  final String content;
  final int status;
  final String? reply;
  // final DateTime time;
  final String time;

  Question(
      {required this.id, required this.title, required this.content, required this.status, required this.time, required this.reply});


  Question.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        content = json["content"],
        status = json["status"],
        reply = json["reply"],
        time = json["time"];
        // time = DateFormat("yyyy-mm-dd").parse(json["time"]);


}