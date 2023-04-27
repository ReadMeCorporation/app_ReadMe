import 'package:readme_app/model/user/user.dart';

class Reviews {
  final int id;
  final User user;
  final double stars;
  final String content;
  final String status;

  Reviews(
      {required this.id,
      required this.user,
      required this.stars,
      required this.content,
      required this.status});

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": user,
        "stars": stars,
        "content": content,
        "status": status,
      };

  Reviews.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        user = User.fromJson(json["smallCategory"]),
        stars = json["stars"],
        content = json["content"],
        status = json["status"];
}
