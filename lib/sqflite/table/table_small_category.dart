import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_small_category.freezed.dart';
part 'table_small_category.g.dart';


@freezed
class TableSamllCategory with _$TableSamllCategory {
  factory TableSamllCategory({
    required int bigCategoryId,
    required int id,
    required String name
  }) = _TableSamllCategory;

  factory TableSamllCategory.fromJson(Map<String, Object?> json) => _$TableSamllCategoryFromJson(json);

}