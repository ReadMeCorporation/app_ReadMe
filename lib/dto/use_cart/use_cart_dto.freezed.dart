// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'use_cart_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UseCartDTO _$UseCartDTOFromJson(Map<String, dynamic> json) {
  return _UseCartDTO.fromJson(json);
}

/// @nodoc
mixin _$UseCartDTO {
  CartDTO get cartDTO => throw _privateConstructorUsedError;
  set cartDTO(CartDTO value) => throw _privateConstructorUsedError;
  bool get isChecked => throw _privateConstructorUsedError;
  set isChecked(bool value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UseCartDTOCopyWith<UseCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UseCartDTOCopyWith<$Res> {
  factory $UseCartDTOCopyWith(
          UseCartDTO value, $Res Function(UseCartDTO) then) =
      _$UseCartDTOCopyWithImpl<$Res, UseCartDTO>;
  @useResult
  $Res call({CartDTO cartDTO, bool isChecked});

  $CartDTOCopyWith<$Res> get cartDTO;
}

/// @nodoc
class _$UseCartDTOCopyWithImpl<$Res, $Val extends UseCartDTO>
    implements $UseCartDTOCopyWith<$Res> {
  _$UseCartDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartDTO = null,
    Object? isChecked = null,
  }) {
    return _then(_value.copyWith(
      cartDTO: null == cartDTO
          ? _value.cartDTO
          : cartDTO // ignore: cast_nullable_to_non_nullable
              as CartDTO,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartDTOCopyWith<$Res> get cartDTO {
    return $CartDTOCopyWith<$Res>(_value.cartDTO, (value) {
      return _then(_value.copyWith(cartDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UseCartDTOCopyWith<$Res>
    implements $UseCartDTOCopyWith<$Res> {
  factory _$$_UseCartDTOCopyWith(
          _$_UseCartDTO value, $Res Function(_$_UseCartDTO) then) =
      __$$_UseCartDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartDTO cartDTO, bool isChecked});

  @override
  $CartDTOCopyWith<$Res> get cartDTO;
}

/// @nodoc
class __$$_UseCartDTOCopyWithImpl<$Res>
    extends _$UseCartDTOCopyWithImpl<$Res, _$_UseCartDTO>
    implements _$$_UseCartDTOCopyWith<$Res> {
  __$$_UseCartDTOCopyWithImpl(
      _$_UseCartDTO _value, $Res Function(_$_UseCartDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartDTO = null,
    Object? isChecked = null,
  }) {
    return _then(_$_UseCartDTO(
      cartDTO: null == cartDTO
          ? _value.cartDTO
          : cartDTO // ignore: cast_nullable_to_non_nullable
              as CartDTO,
      isChecked: null == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UseCartDTO with DiagnosticableTreeMixin implements _UseCartDTO {
  _$_UseCartDTO({required this.cartDTO, required this.isChecked});

  factory _$_UseCartDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UseCartDTOFromJson(json);

  @override
  CartDTO cartDTO;
  @override
  bool isChecked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UseCartDTO(cartDTO: $cartDTO, isChecked: $isChecked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UseCartDTO'))
      ..add(DiagnosticsProperty('cartDTO', cartDTO))
      ..add(DiagnosticsProperty('isChecked', isChecked));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UseCartDTOCopyWith<_$_UseCartDTO> get copyWith =>
      __$$_UseCartDTOCopyWithImpl<_$_UseCartDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UseCartDTOToJson(
      this,
    );
  }
}

abstract class _UseCartDTO implements UseCartDTO {
  factory _UseCartDTO({required CartDTO cartDTO, required bool isChecked}) =
      _$_UseCartDTO;

  factory _UseCartDTO.fromJson(Map<String, dynamic> json) =
      _$_UseCartDTO.fromJson;

  @override
  CartDTO get cartDTO;
  set cartDTO(CartDTO value);
  @override
  bool get isChecked;
  set isChecked(bool value);
  @override
  @JsonKey(ignore: true)
  _$$_UseCartDTOCopyWith<_$_UseCartDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
