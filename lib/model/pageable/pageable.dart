import 'package:readme_app/model/sort/sort.dart';



import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'pageable.freezed.dart';
part 'pageable.g.dart';


@unfreezed
class Pageable with _$Pageable {
  factory Pageable({
  required Sort sort,
  required int pageSize,
  required int pageNumber,
  required int offset,
  required bool paged,
  required bool unpaged
  }) = _Pageable;

  factory Pageable.fromJson(Map<String, Object?> json) => _$PageableFromJson(json);
}

