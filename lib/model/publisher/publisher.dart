import 'package:intl/intl.dart';


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'publisher.freezed.dart';
part 'publisher.g.dart';

// 실행
// flutter pub run build_runner build

@freezed
class Publisher with _$Publisher {
  const factory Publisher({
    required int id,
    required String username,
    required String role,
    required String businessNumber,
    required String businessName,
    required String joinTime,
  }) = _Publisher;

  factory Publisher.fromJson(Map<String, Object?> json) => _$PublisherFromJson(json);

}
