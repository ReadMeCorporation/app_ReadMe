import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/file_info/file_info.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/small_category/small_category.dart';

class Book {
  int id;
  Publisher publisher;
  String title;
  String author;
  int price;
  String introduction;
  BigCategory bigCategory; // id
  SmallCategory smallCategory; // id
  String authorInfo;
  bool isHeart;
  double stars;
  List<FileDTO> fileDTO; // id

  Book({
    required this.id,
    required this.publisher,
    required this.title,
    required this.author,
    required this.price,
    required this.introduction,
    required this.bigCategory,
    required this.smallCategory,
    required this.authorInfo,
    required this.isHeart,
    required this.stars,
    required this.fileDTO,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "publisher": publisher,
        "title": title,
        "author": author,
        "price": price,
        "introduction": introduction,
        "bigCategory": bigCategory,
        "smallCategory": smallCategory,
        "authorInfo": authorInfo,
        "isHeart": isHeart,
        "stars": stars,
        "fileDTO": fileDTO,
      };

  factory Book.fromJson(Map<String, dynamic> json) {
    json["isHeart"] = true;
    print(json["isHeart"].toString());
    print("tt: " + json.toString());
    
    // TODO 얘는 됨
    // String jsonArrayString = '[{"id": 9,"fileName": "book2.epub","fileUrl": "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/335ce2ff-c7c6-4bc3-971c-6bc58c46d70b-book2.epub","status": "ACTIVE"},{"id": 10,"fileName": "book2.png","fileUrl": "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png","status": "ACTIVE"}]';
    // print("jsonArrayString" + jsonArrayString);

    List<dynamic> jsonList = jsonDecode(json["fileDTO"]);
    print("jsonList : " + jsonList.toString());
    String test = jsonList.map((e) => FileDTO.fromJson(e)).toString();

    print("test" + test);

    var book = Book(
        id: json["id"],
        publisher: Publisher.fromJson(json["publisher"]),
        title: json["title"],
        author: json["author"],
        price: json["price"],
        introduction: json["introduction"],
        bigCategory: BigCategory.fromJson(json["bigCategory"]),
        smallCategory: SmallCategory.fromJson(json["smallCategory"]),
        authorInfo: json["authorInfo"],
        isHeart: json["isHeart"],
        stars: json["stars"],
        fileDTO: json["fileDTO"].map((e) => FileDTO.fromJson(e)).toList());
  print("ff2" + book.id.toString());
  return book;
  }

}
