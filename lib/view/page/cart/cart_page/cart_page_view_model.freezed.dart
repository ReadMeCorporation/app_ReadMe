// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartPageModel {
  bool get isAllChecked => throw _privateConstructorUsedError;
  set isAllChecked(bool value) => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;
  set totalPrice(int value) => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  set totalCount(int value) => throw _privateConstructorUsedError;
  List<UseCartDTO> get cartBooks => throw _privateConstructorUsedError;
  set cartBooks(List<UseCartDTO> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CartPageModelCopyWith<CartPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartPageModelCopyWith<$Res> {
  factory $CartPageModelCopyWith(
          CartPageModel value, $Res Function(CartPageModel) then) =
      _$CartPageModelCopyWithImpl<$Res, CartPageModel>;
  @useResult
  $Res call(
      {bool isAllChecked,
      int totalPrice,
      int totalCount,
      List<UseCartDTO> cartBooks});
}

/// @nodoc
class _$CartPageModelCopyWithImpl<$Res, $Val extends CartPageModel>
    implements $CartPageModelCopyWith<$Res> {
  _$CartPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllChecked = null,
    Object? totalPrice = null,
    Object? totalCount = null,
    Object? cartBooks = null,
  }) {
    return _then(_value.copyWith(
      isAllChecked: null == isAllChecked
          ? _value.isAllChecked
          : isAllChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      cartBooks: null == cartBooks
          ? _value.cartBooks
          : cartBooks // ignore: cast_nullable_to_non_nullable
              as List<UseCartDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CartPageModelCopyWith<$Res>
    implements $CartPageModelCopyWith<$Res> {
  factory _$$_CartPageModelCopyWith(
          _$_CartPageModel value, $Res Function(_$_CartPageModel) then) =
      __$$_CartPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAllChecked,
      int totalPrice,
      int totalCount,
      List<UseCartDTO> cartBooks});
}

/// @nodoc
class __$$_CartPageModelCopyWithImpl<$Res>
    extends _$CartPageModelCopyWithImpl<$Res, _$_CartPageModel>
    implements _$$_CartPageModelCopyWith<$Res> {
  __$$_CartPageModelCopyWithImpl(
      _$_CartPageModel _value, $Res Function(_$_CartPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAllChecked = null,
    Object? totalPrice = null,
    Object? totalCount = null,
    Object? cartBooks = null,
  }) {
    return _then(_$_CartPageModel(
      isAllChecked: null == isAllChecked
          ? _value.isAllChecked
          : isAllChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      cartBooks: null == cartBooks
          ? _value.cartBooks
          : cartBooks // ignore: cast_nullable_to_non_nullable
              as List<UseCartDTO>,
    ));
  }
}

/// @nodoc

class _$_CartPageModel with DiagnosticableTreeMixin implements _CartPageModel {
  _$_CartPageModel(
      {required this.isAllChecked,
      required this.totalPrice,
      required this.totalCount,
      required this.cartBooks});

  @override
  bool isAllChecked;
  @override
  int totalPrice;
  @override
  int totalCount;
  @override
  List<UseCartDTO> cartBooks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CartPageModel(isAllChecked: $isAllChecked, totalPrice: $totalPrice, totalCount: $totalCount, cartBooks: $cartBooks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CartPageModel'))
      ..add(DiagnosticsProperty('isAllChecked', isAllChecked))
      ..add(DiagnosticsProperty('totalPrice', totalPrice))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('cartBooks', cartBooks));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CartPageModelCopyWith<_$_CartPageModel> get copyWith =>
      __$$_CartPageModelCopyWithImpl<_$_CartPageModel>(this, _$identity);
}

abstract class _CartPageModel implements CartPageModel {
  factory _CartPageModel(
      {required bool isAllChecked,
      required int totalPrice,
      required int totalCount,
      required List<UseCartDTO> cartBooks}) = _$_CartPageModel;

  @override
  bool get isAllChecked;
  set isAllChecked(bool value);
  @override
  int get totalPrice;
  set totalPrice(int value);
  @override
  int get totalCount;
  set totalCount(int value);
  @override
  List<UseCartDTO> get cartBooks;
  set cartBooks(List<UseCartDTO> value);
  @override
  @JsonKey(ignore: true)
  _$$_CartPageModelCopyWith<_$_CartPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
