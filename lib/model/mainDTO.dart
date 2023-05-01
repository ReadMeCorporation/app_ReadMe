import 'package:readme_app/model/book_banner/banner.dart';
import 'package:readme_app/model/pageable.dart';
import 'package:readme_app/model/sort.dart';

import 'book/book.dart';

class MainDTO  {
  BookBanner bookBanner;
  List<Book> content;
  Pageable pageable;
  bool last;
  final int totalElements;
  final int totalPages;
  int number;
  Sort sort;
  bool first;
  int numberOfElements;
  int size;
  bool empty;

  MainDTO(
      this.bookBanner,
      this.content,
      this.pageable,
      this.last,
      this.totalElements,
      this.totalPages,
      this.number,
      this.sort,
      this.first,
      this.numberOfElements,
      this.size,
      this.empty);


  Map<String, dynamic> toJson() => {
    "bookBanner": bookBanner,
    "content": content,
    "pageable": pageable,
    "last": last,
    "totalElements": totalElements,
    "totalPages": totalPages,
    "number": number,
    "sort": sort,
    "first" : first,
    "numberOfElements": numberOfElements,
    "size": size,
    "empty": empty,
  };


  MainDTO.fromJson(Map<String, dynamic> json)
      : bookBanner = json["bookBanner"].map((e) => BookBanner.fromJson(e)).toList(),
        content = json["content"].map((e) => Book.fromJson(e)).toList(),
        pageable = Pageable.fromJson(json["pageable"]),
        last = json["last"],
        totalElements = json["totalElements"],
        totalPages = json["totalPages"],
        number = json["number"],
        sort = Sort.fromJson(json["sort"]),
        first = json["first"],
        numberOfElements = json["numberOfElements"],
        size = json["size"],
        empty = json["empty"];
}