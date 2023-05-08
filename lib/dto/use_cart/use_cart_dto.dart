import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


part 'use_cart_dto.freezed.dart';
part 'use_cart_dto.g.dart';

@unfreezed
class UseCartDTO with _$UseCartDTO {
  factory UseCartDTO({
    required CartDTO cartDTO,
    required bool isChecked,
  }) = _UseCartDTO;

  factory UseCartDTO.fromJson(Map<String, Object?> json) => _$UseCartDTOFromJson(json);

  }

