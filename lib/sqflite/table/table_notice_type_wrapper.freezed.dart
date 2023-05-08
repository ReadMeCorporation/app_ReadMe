// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_notice_type_wrapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableNoticeTypeWrapper _$TableNoticeTypeWrapperFromJson(
    Map<String, dynamic> json) {
  return _TableNoticeTypeWrapper.fromJson(json);
}

/// @nodoc
mixin _$TableNoticeTypeWrapper {
  String get noticeType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableNoticeTypeWrapperCopyWith<TableNoticeTypeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableNoticeTypeWrapperCopyWith<$Res> {
  factory $TableNoticeTypeWrapperCopyWith(TableNoticeTypeWrapper value,
          $Res Function(TableNoticeTypeWrapper) then) =
      _$TableNoticeTypeWrapperCopyWithImpl<$Res, TableNoticeTypeWrapper>;
  @useResult
  $Res call({String noticeType});
}

/// @nodoc
class _$TableNoticeTypeWrapperCopyWithImpl<$Res,
        $Val extends TableNoticeTypeWrapper>
    implements $TableNoticeTypeWrapperCopyWith<$Res> {
  _$TableNoticeTypeWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeType = null,
  }) {
    return _then(_value.copyWith(
      noticeType: null == noticeType
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableNoticeTypeWrapperCopyWith<$Res>
    implements $TableNoticeTypeWrapperCopyWith<$Res> {
  factory _$$_TableNoticeTypeWrapperCopyWith(_$_TableNoticeTypeWrapper value,
          $Res Function(_$_TableNoticeTypeWrapper) then) =
      __$$_TableNoticeTypeWrapperCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String noticeType});
}

/// @nodoc
class __$$_TableNoticeTypeWrapperCopyWithImpl<$Res>
    extends _$TableNoticeTypeWrapperCopyWithImpl<$Res,
        _$_TableNoticeTypeWrapper>
    implements _$$_TableNoticeTypeWrapperCopyWith<$Res> {
  __$$_TableNoticeTypeWrapperCopyWithImpl(_$_TableNoticeTypeWrapper _value,
      $Res Function(_$_TableNoticeTypeWrapper) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noticeType = null,
  }) {
    return _then(_$_TableNoticeTypeWrapper(
      noticeType: null == noticeType
          ? _value.noticeType
          : noticeType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableNoticeTypeWrapper
    with DiagnosticableTreeMixin
    implements _TableNoticeTypeWrapper {
  _$_TableNoticeTypeWrapper({required this.noticeType});

  factory _$_TableNoticeTypeWrapper.fromJson(Map<String, dynamic> json) =>
      _$$_TableNoticeTypeWrapperFromJson(json);

  @override
  final String noticeType;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableNoticeTypeWrapper(noticeType: $noticeType)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableNoticeTypeWrapper'))
      ..add(DiagnosticsProperty('noticeType', noticeType));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableNoticeTypeWrapper &&
            (identical(other.noticeType, noticeType) ||
                other.noticeType == noticeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, noticeType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableNoticeTypeWrapperCopyWith<_$_TableNoticeTypeWrapper> get copyWith =>
      __$$_TableNoticeTypeWrapperCopyWithImpl<_$_TableNoticeTypeWrapper>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableNoticeTypeWrapperToJson(
      this,
    );
  }
}

abstract class _TableNoticeTypeWrapper implements TableNoticeTypeWrapper {
  factory _TableNoticeTypeWrapper({required final String noticeType}) =
      _$_TableNoticeTypeWrapper;

  factory _TableNoticeTypeWrapper.fromJson(Map<String, dynamic> json) =
      _$_TableNoticeTypeWrapper.fromJson;

  @override
  String get noticeType;
  @override
  @JsonKey(ignore: true)
  _$$_TableNoticeTypeWrapperCopyWith<_$_TableNoticeTypeWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}
