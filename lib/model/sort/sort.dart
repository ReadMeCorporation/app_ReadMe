import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'sort.freezed.dart';

part 'sort.g.dart';

@unfreezed
class Sort with _$Sort {
   factory Sort({
    required bool sorted,
    required bool unsorted,
    required bool empty
  }) = _Sort;

  factory Sort.fromJson(Map<String, Object?> json) =>
      _$SortFromJson(json);
}