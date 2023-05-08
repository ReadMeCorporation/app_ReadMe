import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_big_category.freezed.dart';
part 'table_big_category.g.dart';


@freezed
class TableBigCategory with _$TableBigCategory {
  factory TableBigCategory({
    required int id,
    required String name,
  }) = _TableBigCategory;

  factory TableBigCategory.fromJson(Map<String, Object?> json) => _$TableBigCategoryFromJson(json);

}