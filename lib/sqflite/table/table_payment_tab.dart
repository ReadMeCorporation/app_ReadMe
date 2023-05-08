import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// 파일명
part 'table_payment_tab.freezed.dart';
part 'table_payment_tab.g.dart';


@freezed
class TablePaymentTab with _$TablePaymentTab{
  factory TablePaymentTab({
    required String requestName,
    required String name,
  }) = _TablePaymentTab;

  factory TablePaymentTab.fromJson(Map<String, Object?> json) => _$TablePaymentTabFromJson(json);

}