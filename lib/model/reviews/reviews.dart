import 'package:readme_app/model/user/user.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'reviews.freezed.dart';
part 'reviews.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class Reviews with _$Reviews{
  const factory Reviews({
    required int id,
    required User user,
    required double stars,
    required String content,
    required String status

}) = _Reviews;

 factory Reviews.fromJson(Map<String, Object?> json) => _$ReviewsFromJson(json);
}
