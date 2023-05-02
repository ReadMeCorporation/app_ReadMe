import 'package:readme_app/model/big_category/big_category.dart';
import 'package:readme_app/model/file_info/file_dto.dart';
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
  FileDTO epubFile;
  FileDTO coverFile;

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
    required this.epubFile,
    required this.coverFile,
  });

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      id: json['id'],
      publisher: Publisher.fromJson(json['publisher']),
      title: json['title'],
      author: json['author'],
      price: json['price'],
      introduction: json['introduction'],
      bigCategory: BigCategory.fromJson(json['bigCategory']),
      smallCategory: SmallCategory.fromJson(json['smallCategory']),
      authorInfo: json['authorInfo'],
      isHeart: json['isHeart'] ?? true,
      stars: json['stars'],
      epubFile: FileDTO.fromJson(json['epubFile']),
      coverFile: FileDTO.fromJson(json['coverFile']),
    );
  }

}