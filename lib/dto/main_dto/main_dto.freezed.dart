// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainDTO _$MainDTOFromJson(Map<String, dynamic> json) {
  return _MainDTO.fromJson(json);
}

/// @nodoc
mixin _$MainDTO {
  List<Book> get content => throw _privateConstructorUsedError;
  Pageable get pageable => throw _privateConstructorUsedError;
  bool get last => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  Sort get sort => throw _privateConstructorUsedError;
  bool get first => throw _privateConstructorUsedError;
  int get numberOfElements => throw _privateConstructorUsedError;
  bool get empty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MainDTOCopyWith<MainDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainDTOCopyWith<$Res> {
  factory $MainDTOCopyWith(MainDTO value, $Res Function(MainDTO) then) =
      _$MainDTOCopyWithImpl<$Res, MainDTO>;
  @useResult
  $Res call(
      {List<Book> content,
      Pageable pageable,
      bool last,
      int totalElements,
      int totalPages,
      int size,
      int number,
      Sort sort,
      bool first,
      int numberOfElements,
      bool empty});

  $PageableCopyWith<$Res> get pageable;
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class _$MainDTOCopyWithImpl<$Res, $Val extends MainDTO>
    implements $MainDTOCopyWith<$Res> {
  _$MainDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? first = null,
    Object? numberOfElements = null,
    Object? empty = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PageableCopyWith<$Res> get pageable {
    return $PageableCopyWith<$Res>(_value.pageable, (value) {
      return _then(_value.copyWith(pageable: value) as $Val);
    });
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
abstract class _$$_MainDTOCopyWith<$Res> implements $MainDTOCopyWith<$Res> {
  factory _$$_MainDTOCopyWith(
          _$_MainDTO value, $Res Function(_$_MainDTO) then) =
      __$$_MainDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Book> content,
      Pageable pageable,
      bool last,
      int totalElements,
      int totalPages,
      int size,
      int number,
      Sort sort,
      bool first,
      int numberOfElements,
      bool empty});

  @override
  $PageableCopyWith<$Res> get pageable;
  @override
  $SortCopyWith<$Res> get sort;
}

/// @nodoc
class __$$_MainDTOCopyWithImpl<$Res>
    extends _$MainDTOCopyWithImpl<$Res, _$_MainDTO>
    implements _$$_MainDTOCopyWith<$Res> {
  __$$_MainDTOCopyWithImpl(_$_MainDTO _value, $Res Function(_$_MainDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageable = null,
    Object? last = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? size = null,
    Object? number = null,
    Object? sort = null,
    Object? first = null,
    Object? numberOfElements = null,
    Object? empty = null,
  }) {
    return _then(_$_MainDTO(
      content: null == content
          ? _value._content
          : content // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      pageable: null == pageable
          ? _value.pageable
          : pageable // ignore: cast_nullable_to_non_nullable
              as Pageable,
      last: null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as bool,
      totalElements: null == totalElements
          ? _value.totalElements
          : totalElements // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as Sort,
      first: null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as bool,
      numberOfElements: null == numberOfElements
          ? _value.numberOfElements
          : numberOfElements // ignore: cast_nullable_to_non_nullable
              as int,
      empty: null == empty
          ? _value.empty
          : empty // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MainDTO with DiagnosticableTreeMixin implements _MainDTO {
  _$_MainDTO(
      {required final List<Book> content,
      required this.pageable,
      required this.last,
      required this.totalElements,
      required this.totalPages,
      required this.size,
      required this.number,
      required this.sort,
      required this.first,
      required this.numberOfElements,
      required this.empty})
      : _content = content;

  factory _$_MainDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MainDTOFromJson(json);

  final List<Book> _content;
  @override
  List<Book> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  final Pageable pageable;
  @override
  final bool last;
  @override
  final int totalElements;
  @override
  final int totalPages;
  @override
  final int size;
  @override
  final int number;
  @override
  final Sort sort;
  @override
  final bool first;
  @override
  final int numberOfElements;
  @override
  final bool empty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MainDTO(content: $content, pageable: $pageable, last: $last, totalElements: $totalElements, totalPages: $totalPages, size: $size, number: $number, sort: $sort, first: $first, numberOfElements: $numberOfElements, empty: $empty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MainDTO'))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('pageable', pageable))
      ..add(DiagnosticsProperty('last', last))
      ..add(DiagnosticsProperty('totalElements', totalElements))
      ..add(DiagnosticsProperty('totalPages', totalPages))
      ..add(DiagnosticsProperty('size', size))
      ..add(DiagnosticsProperty('number', number))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('first', first))
      ..add(DiagnosticsProperty('numberOfElements', numberOfElements))
      ..add(DiagnosticsProperty('empty', empty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MainDTO &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageable, pageable) ||
                other.pageable == pageable) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.numberOfElements, numberOfElements) ||
                other.numberOfElements == numberOfElements) &&
            (identical(other.empty, empty) || other.empty == empty));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_content),
      pageable,
      last,
      totalElements,
      totalPages,
      size,
      number,
      sort,
      first,
      numberOfElements,
      empty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MainDTOCopyWith<_$_MainDTO> get copyWith =>
      __$$_MainDTOCopyWithImpl<_$_MainDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MainDTOToJson(
      this,
    );
  }
}

abstract class _MainDTO implements MainDTO {
  factory _MainDTO(
      {required final List<Book> content,
      required final Pageable pageable,
      required final bool last,
      required final int totalElements,
      required final int totalPages,
      required final int size,
      required final int number,
      required final Sort sort,
      required final bool first,
      required final int numberOfElements,
      required final bool empty}) = _$_MainDTO;

  factory _MainDTO.fromJson(Map<String, dynamic> json) = _$_MainDTO.fromJson;

  @override
  List<Book> get content;
  @override
  Pageable get pageable;
  @override
  bool get last;
  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  int get size;
  @override
  int get number;
  @override
  Sort get sort;
  @override
  bool get first;
  @override
  int get numberOfElements;
  @override
  bool get empty;
  @override
  @JsonKey(ignore: true)
  _$$_MainDTOCopyWith<_$_MainDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
