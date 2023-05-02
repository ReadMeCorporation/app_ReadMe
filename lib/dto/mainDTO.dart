import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/sort/sort.dart';

import '../model/book/book.dart';

class MainDTO {
  List<Book>? content;
  Pageable pageable;
  bool last;
  int totalElements;
  int totalPages;
  int number;
  Sort sort;
  bool first;
  int numberOfElements;
  int size;
  bool empty;

  MainDTO({required this.content,
    required this.pageable,
    required this.last,
    required this.totalElements,
    required this.totalPages,
    required this.number,
    required this.sort,
    required this.first,
    required this.numberOfElements,
    required this.size,
    required this.empty});


  factory MainDTO.fromJson(Map<String, dynamic> json) {
    return MainDTO(
        content: (json['content'] as List)
            .map((e) => Book.fromJson(e))
            .toList(),
        pageable: Pageable.fromJson(json['pageable']),
        last: json['last'],
        totalElements: json['totalElements'],
        totalPages: json['totalPages'],
        number: json['number'],
        sort: Sort.fromJson(json['sort']),
        first: json['first'],
        numberOfElements: json['numberOfElements'],
        size: json['size'],
        empty: json['empty']);
  }
}