import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_main_tab.freezed.dart';
part 'table_main_tab.g.dart';


@freezed
class TableMainTab with _$TableMainTab {
  factory TableMainTab({
    required String requestName,
    required String name,
  }) = _TableMainTab;

  factory TableMainTab.fromJson(Map<String, Object?> json) => _$TableMainTabFromJson(json);

}