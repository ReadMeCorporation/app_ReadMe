// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartDTO _$CartDTOFromJson(Map<String, dynamic> json) {
  return _CartDTO.fromJson(json);
}

/// @nodoc
mixin _$CartDTO {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Book get book => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDTOCopyWith<CartDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDTOCopyWith<$Res> {
  factory $CartDTOCopyWith(CartDTO value, $Res Function(CartDTO) then) =
      _$CartDTOCopyWithImpl<$Res, CartDTO>;
  @useResult
  $Res call({int id, User user, Book book});

  $BookCopyWith<$Res> get book;
}

/// @nodoc
class _$CartDTOCopyWithImpl<$Res, $Val extends CartDTO>
    implements $CartDTOCopyWith<$Res> {
  _$CartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookCopyWith<$Res> get book {
    return $BookCopyWith<$Res>(_value.book, (value) {
      return _then(_value.copyWith(book: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CartDTOCopyWith<$Res> implements $CartDTOCopyWith<$Res> {
  factory _$$_CartDTOCopyWith(
          _$_CartDTO value, $Res Function(_$_CartDTO) then) =
      __$$_CartDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, User user, Book book});

  @override
  $BookCopyWith<$Res> get book;
}

/// @nodoc
class __$$_CartDTOCopyWithImpl<$Res>
    extends _$CartDTOCopyWithImpl<$Res, _$_CartDTO>
    implements _$$_CartDTOCopyWith<$Res> {
  __$$_CartDTOCopyWithImpl(_$_CartDTO _value, $Res Function(_$_CartDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? book = null,
  }) {
    return _then(_$_CartDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CartDTO with DiagnosticableTreeMixin implements _CartDTO {
  _$_CartDTO({required this.id, required this.user, required this.book});

  factory _$_CartDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CartDTOFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final Book book;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartDTO(id: $id, user: $user, book: $book)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('book', book));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CartDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, book);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartDTOCopyWith<_$_CartDTO> get copyWith =>
      __$$_CartDTOCopyWithImpl<_$_CartDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartDTOToJson(
      this,
    );
  }
}

abstract class _CartDTO implements CartDTO {
  factory _CartDTO(
      {required final int id,
      required final User user,
      required final Book book}) = _$_CartDTO;

  factory _CartDTO.fromJson(Map<String, dynamic> json) = _$_CartDTO.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  Book get book;
  @override
  @JsonKey(ignore: true)
  _$$_CartDTOCopyWith<_$_CartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
