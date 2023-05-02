
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'big_category.freezed.dart';
part 'big_category.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class BigCategory with _$BigCategory {
  const factory BigCategory({
    required int id,
    required String bigCategory
  }) = _BigCategory;

  factory BigCategory.fromJson(Map<String, Object?> json) => _$BigCategoryFromJson(json);


}
