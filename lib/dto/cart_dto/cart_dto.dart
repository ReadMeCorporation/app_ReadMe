import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/user/user.dart';

// 파일명
part 'cart_dto.freezed.dart';
part 'cart_dto.g.dart';

@freezed
class CartDTO with _$CartDTO {
  factory CartDTO({
    required int id,
    required User user,
    required Book book,
  }) = _CartDTO;

  factory CartDTO.fromJson(Map<String, Object?> json) => _$CartDTOFromJson(json);


}
