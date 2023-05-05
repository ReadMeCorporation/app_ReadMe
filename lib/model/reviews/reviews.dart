import 'package:readme_app/model/user/app_user.dart';

class Reviews {
  final int id;
  final AppUser appUser;
  final double stars;
  final String content;
  final String status;

  Reviews(
      {required this.id,
      required this.appUser,
      required this.stars,
      required this.content,
      required this.status});

  Map<String, dynamic> toJson() => {
        "id": id,
        "user": appUser,
        "stars": stars,
        "content": content,
        "status": status,
      };

  Reviews.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        appUser = AppUser.fromJson(json["smallCategory"]),
        stars = json["stars"],
        content = json["content"],
        status = json["status"];
}
