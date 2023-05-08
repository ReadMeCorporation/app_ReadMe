
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/small_category/small_category.dart';

// 파일명
part 'big_category.freezed.dart';
part 'big_category.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class BigCategory with _$BigCategory {
  const factory BigCategory({
    required int id,
    required String name,
     List<SmallCategory>? smallCategory,
  }) = _BigCategory;

  factory BigCategory.fromJson(Map<String, Object?> json) => _$BigCategoryFromJson(json);


}
