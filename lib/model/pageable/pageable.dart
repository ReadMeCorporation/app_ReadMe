import 'package:readme_app/model/sort/sort.dart';

class Pageable {
  Sort sort;
  int pageSize;
  int pageNumber;
  int offset;
  bool paged;
  bool unpaged;

  Pageable(
      {required this.sort,
      required this.pageSize,
      required this.pageNumber,
      required this.offset,
      required this.paged,
      required this.unpaged});

  Pageable.fromJson(Map<String, dynamic> json)
      : sort = Sort.fromJson(json['sort']),
        pageSize = json['pageSize'],
        pageNumber = json['pageNumber'],
        offset = json['offset'],
        paged = json['paged'],
        unpaged = json['unpaged'];
}
