import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/file_info/file_info.dart';
import 'package:readme_app/model/publisher/publisher.dart';
import 'package:readme_app/model/small_category/small_category.dart';

// Reqeust size = 10, page =1
// size=10, page=1
// Response isLast = false
// 드래그 젤 밑 지점에서
// request size=10 page=2
// 결과에 bookTiles.addAll


class BookResponse {}

class Book {
  final int id;
  final Publisher publisher;
  final String title;
  final String author;
  final String price;
  final String introduction;
  final String filepath;
  final BigCategory bigCategory; // id
  final SmallCategory smallCategory; // id
  final String authorinfo;
  final FileInfo fileInfo; // id

  Book({
    required this.id,
    required this.publisher,
    required this.title,
    required this.author,
    required this.price,
    required this.introduction,
    required this.filepath,
    required this.bigCategory,
    required this.smallCategory,
    required this.authorinfo,
    required this.fileInfo,
  });

  Map<String, dynamic> toJson() => {
        "id": id,
        "publisher": publisher,
        "title": title,
        "author": author,
        "price": price,
        "introduction": introduction,
        "filepath": filepath,
        "bigCategory": bigCategory,
        "smallCategory": smallCategory,
        "authorinfo": authorinfo,
        "fileInfo": fileInfo,
      };

  Book.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        publisher = Publisher.fromJson(json["publisher"]),
        title = json["title"],
        author = json["author"],
        price = json["price"],
        introduction = json["introduction"],
        filepath = json["filepath"],
        bigCategory = BigCategory.fromJson(json["bigCategory"]),
        smallCategory = SmallCategory.fromJson(json["smallCategory"]),
        authorinfo = json["authorinfo"],
        fileInfo = FileInfo.fromJson(json["fileInfo"]);
}
