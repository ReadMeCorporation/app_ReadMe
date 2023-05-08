// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileDTO _$FileDTOFromJson(Map<String, dynamic> json) {
  return _FileDTO.fromJson(json);
}

/// @nodoc
mixin _$FileDTO {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  set fileName(String value) => throw _privateConstructorUsedError;
  String get fileUrl => throw _privateConstructorUsedError;
  set fileUrl(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileDTOCopyWith<FileDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDTOCopyWith<$Res> {
  factory $FileDTOCopyWith(FileDTO value, $Res Function(FileDTO) then) =
      _$FileDTOCopyWithImpl<$Res, FileDTO>;
  @useResult
  $Res call({int id, String fileName, String fileUrl});
}

/// @nodoc
class _$FileDTOCopyWithImpl<$Res, $Val extends FileDTO>
    implements $FileDTOCopyWith<$Res> {
  _$FileDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? fileUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FileDTOCopyWith<$Res> implements $FileDTOCopyWith<$Res> {
  factory _$$_FileDTOCopyWith(
          _$_FileDTO value, $Res Function(_$_FileDTO) then) =
      __$$_FileDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String fileName, String fileUrl});
}

/// @nodoc
class __$$_FileDTOCopyWithImpl<$Res>
    extends _$FileDTOCopyWithImpl<$Res, _$_FileDTO>
    implements _$$_FileDTOCopyWith<$Res> {
  __$$_FileDTOCopyWithImpl(_$_FileDTO _value, $Res Function(_$_FileDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fileName = null,
    Object? fileUrl = null,
  }) {
    return _then(_$_FileDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileUrl: null == fileUrl
          ? _value.fileUrl
          : fileUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileDTO with DiagnosticableTreeMixin implements _FileDTO {
  _$_FileDTO({required this.id, required this.fileName, required this.fileUrl});

  factory _$_FileDTO.fromJson(Map<String, dynamic> json) =>
      _$$_FileDTOFromJson(json);

  @override
  int id;
  @override
  String fileName;
  @override
  String fileUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FileDTO(id: $id, fileName: $fileName, fileUrl: $fileUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FileDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('fileUrl', fileUrl));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FileDTOCopyWith<_$_FileDTO> get copyWith =>
      __$$_FileDTOCopyWithImpl<_$_FileDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileDTOToJson(
      this,
    );
  }
}

abstract class _FileDTO implements FileDTO {
  factory _FileDTO(
      {required int id,
      required String fileName,
      required String fileUrl}) = _$_FileDTO;

  factory _FileDTO.fromJson(Map<String, dynamic> json) = _$_FileDTO.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get fileName;
  set fileName(String value);
  @override
  String get fileUrl;
  set fileUrl(String value);
  @override
  @JsonKey(ignore: true)
  _$$_FileDTOCopyWith<_$_FileDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
