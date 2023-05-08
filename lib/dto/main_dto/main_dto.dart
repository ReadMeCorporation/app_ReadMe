import 'package:readme_app/model/pageable/pageable.dart';
import 'package:readme_app/model/sort/sort.dart';

import '../../model/book/book.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'main_dto.freezed.dart';

part 'main_dto.g.dart';

@freezed
class MainDTO with _$MainDTO {
  factory MainDTO(
      {required List<Book> content,
      required Pageable pageable,
      required bool last,
      required int totalElements,
      required int totalPages,
      required int size,
      required int number,
      required Sort sort,
      required bool first,
      required int numberOfElements,
      required bool empty}) = _MainDTO;

  factory MainDTO.fromJson(Map<String, Object?> json) =>
      _$MainDTOFromJson(json);
}
