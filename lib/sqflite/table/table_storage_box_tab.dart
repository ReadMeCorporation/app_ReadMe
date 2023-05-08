import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_storage_box_tab.freezed.dart';
part 'table_storage_box_tab.g.dart';


@freezed
class TableStorageBoxTab with _$TableStorageBoxTab {
  factory TableStorageBoxTab({
    required String requestName,
    required String name,
  }) = _TableStorageBoxTab;

  factory TableStorageBoxTab.fromJson(Map<String, Object?> json) => _$TableStorageBoxTabFromJson(json);

}