import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:readme_app/model/user/user.dart';
import 'package:readme_app/sqflite/model/big_category/big_category.dart';



// 파일명
part 'meta_dto.freezed.dart';
part 'meta_dto.g.dart';


@freezed
class MetaDTO with _$MetaDTO {
  factory MetaDTO({
    required List<BigCategory> bigCategory,
    User? user,
    required List<CommonDTO> storageBoxTabs,
    required List<CommonDTO> mainTabs,
    required List<CommonDTO> paymentTabs,
    required List<String> notificationTypes,
    String? jwt
}) = _MetaDTO;

factory MetaDTO.fromJson(Map<String, Object?> json) => _$MetaDTOFromJson(json);

}

@freezed
class CommonDTO with _$CommonDTO {
  factory CommonDTO({
    required String requestName,
    required String name,
  }) = _CommonDTO;

  factory CommonDTO.fromJson(Map<String, Object?> json) => _$CommonDTOFromJson(json);

}
