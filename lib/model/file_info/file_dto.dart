

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';


// 파일명
part 'file_dto.freezed.dart';
part 'file_dto.g.dart';

// 실행
// flutter pub run build_runner build

@unfreezed
class FileDTO with _$FileDTO {
   factory FileDTO({
   required int id,
   required String fileName,
   required String fileUrl
  }) = _FileDTO;


  factory FileDTO.fromJson(Map<String, Object?> json) => _$FileDTOFromJson(json);

}
