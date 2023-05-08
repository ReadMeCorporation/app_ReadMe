

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'small_category.freezed.dart';
part 'small_category.g.dart';

// 실행
// flutter pub run build_runner build

@unfreezed
class SmallCategory with _$SmallCategory {
   factory SmallCategory({
    required int id,
    required String name
  }) = _SmallCategory;


  factory SmallCategory.fromJson(Map<String, Object?> json) => _$SmallCategoryFromJson(json);

}
