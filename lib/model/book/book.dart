import 'package:intl/intl.dart';

class Book {
  final int id;
  final String publisher;
  final String title;
  final String author;
  final String price;
  final String introduction;
  final String bicCategory; // id
  final String authorinfo;
  final String status;
  final String fileInfo; // id

  Book({
    required this.id,
    required this.publisher,
    required this.title,
    required this.author,
    required this.price,
    required this.introduction,
    required this.bicCategory,
    required this.authorinfo,
    required this.status,
    required this.fileInfo,
  });


  Map<String, dynamic> toJson() => {
    "id": id,
    "publisher": publisher,
    "title": title,
    "author": author,
    "price": price,
    "introduction": introduction,
    "bicCategory": bicCategory,
    "authorinfo": authorinfo,
    "status": status,
    "fileInfo": fileInfo,
  };


  Book.fromJson(Map<String, dynamic> json)
  : id = json["id"],
    publisher = json["publisher"],
    title = json["title"],
    author = json["author"],
    price = json["price"],
    introduction = json["introduction"],
    bicCategory = json["bicCategory"],
    authorinfo = json["authorinfo"],
    status = json["status"],
    fileInfo = json["fileInfo"];

}