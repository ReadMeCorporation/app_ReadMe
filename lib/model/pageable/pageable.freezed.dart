// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pageable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pageable _$PageableFromJson(Map<String, dynamic> json) {
  return _Pageable.fromJson(json);
}

/// @nodoc
mixin _$Pageable {
  Sort get sort => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  bool get paged => throw _privateConstructorUsedError;
  bool get unpaged => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageableCopyWith<Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageableCopyWith<$Res> {
  factory $PageableCopyWith(Pageable value, $Res Function(Pageable) then) =
      _$PageableCopyWithImpl<$Res, Pageable>;
  @useResult
  $Res call(
      {Sort sort,
      int pageSize,
      int pageNumber,
      int offset,
      bool paged,
      bool unpaged});

  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$PageableCopyWithImpl<$Res, $Val extends Pageable>
    implements $PageableCopyWith<$Res> {
  _$PageableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? pageSize = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_value.copyWith(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SortCopyWith<$Res> get sort {
    return $SortCopyWith<$Res>(_value.sort, (value) {
      return _then(_value.copyWith(sort: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PageableCopyWith<$Res> implements $PageableCopyWith<$Res> {
  factory _$$_PageableCopyWith(
          _$_Pageable value, $Res Function(_$_Pageable) then) =
      __$$_PageableCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Sort sort,
      int pageSize,
      int pageNumber,
      int offset,
      bool paged,
      bool unpaged});

  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$_PageableCopyWithImpl<$Res>
    extends _$PageableCopyWithImpl<$Res, _$_Pageable>
    implements _$$_PageableCopyWith<$Res> {
  __$$_PageableCopyWithImpl(
      _$_Pageable _value, $Res Function(_$_Pageable) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? pageSize = null,
    Object? pageNumber = null,
    Object? offset = null,
    Object? paged = null,
    Object? unpaged = null,
  }) {
    return _then(_$_Pageable(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _value.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      paged: null == paged
          ? _value.paged
          : paged // ignore: cast_nullable_to_non_nullable
              as bool,
      unpaged: null == unpaged
          ? _value.unpaged
          : unpaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pageable with DiagnosticableTreeMixin implements _Pageable {
  _$_Pageable(
      {required this.sort,
      required this.pageSize,
      required this.pageNumber,
      required this.offset,
      required this.paged,
      required this.unpaged});

  factory _$_Pageable.fromJson(Map<String, dynamic> json) =>
      _$$_PageableFromJson(json);

  @override
  final Sort sort;
  @override
  final int pageSize;
  @override
  final int pageNumber;
  @override
  final int offset;
  @override
  final bool paged;
  @override
  final bool unpaged;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Pageable(sort: $sort, pageSize: $pageSize, pageNumber: $pageNumber, offset: $offset, paged: $paged, unpaged: $unpaged)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Pageable'))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('pageSize', pageSize))
      ..add(DiagnosticsProperty('pageNumber', pageNumber))
      ..add(DiagnosticsProperty('offset', offset))
      ..add(DiagnosticsProperty('paged', paged))
      ..add(DiagnosticsProperty('unpaged', unpaged));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pageable &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.paged, paged) || other.paged == paged) &&
            (identical(other.unpaged, unpaged) || other.unpaged == unpaged));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sort, pageSize, pageNumber, offset, paged, unpaged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      __$$_PageableCopyWithImpl<_$_Pageable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PageableToJson(
      this,
    );
  }
}

abstract class _Pageable implements Pageable {
  factory _Pageable(
      {required final Sort sort,
      required final int pageSize,
      required final int pageNumber,
      required final int offset,
      required final bool paged,
      required final bool unpaged}) = _$_Pageable;

  factory _Pageable.fromJson(Map<String, dynamic> json) = _$_Pageable.fromJson;

  @override
  Sort get sort;
  @override
  int get pageSize;
  @override
  int get pageNumber;
  @override
  int get offset;
  @override
  bool get paged;
  @override
  bool get unpaged;
  @override
  @JsonKey(ignore: true)
  _$$_PageableCopyWith<_$_Pageable> get copyWith =>
      throw _privateConstructorUsedError;
}
