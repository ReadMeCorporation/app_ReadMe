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


  Map<String, dynamic> toJson() =>
      {
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
        "fileInfo": fileDTO,
      };


  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(id: json["id"],
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
  }
}