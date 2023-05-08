import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_notice_type_wrapper.freezed.dart';
part 'table_notice_type_wrapper.g.dart';


@freezed
class TableNoticeTypeWrapper with _$TableNoticeTypeWrapper {
  factory TableNoticeTypeWrapper({
    required String noticeType
  }) = _TableNoticeTypeWrapper;

  factory TableNoticeTypeWrapper.fromJson(Map<String, Object?> json) => _$TableNoticeTypeWrapperFromJson(json);

}