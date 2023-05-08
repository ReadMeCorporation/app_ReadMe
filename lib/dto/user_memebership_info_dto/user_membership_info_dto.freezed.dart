// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_membership_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserMembershipInfoDTO _$UserMembershipInfoDTOFromJson(
    Map<String, dynamic> json) {
  return _UserMembershipInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$UserMembershipInfoDTO {
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get membershipStartTime => throw _privateConstructorUsedError;
  set membershipStartTime(String value) => throw _privateConstructorUsedError;
  String get membershipEndTime => throw _privateConstructorUsedError;
  set membershipEndTime(String value) => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  set price(int value) => throw _privateConstructorUsedError;
  String get paymentTime => throw _privateConstructorUsedError;
  set paymentTime(String value) => throw _privateConstructorUsedError;
  Membership get membership => throw _privateConstructorUsedError;
  set membership(Membership value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMembershipInfoDTOCopyWith<UserMembershipInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMembershipInfoDTOCopyWith<$Res> {
  factory $UserMembershipInfoDTOCopyWith(UserMembershipInfoDTO value,
          $Res Function(UserMembershipInfoDTO) then) =
      _$UserMembershipInfoDTOCopyWithImpl<$Res, UserMembershipInfoDTO>;
  @useResult
  $Res call(
      {int id,
      String membershipStartTime,
      String membershipEndTime,
      int price,
      String paymentTime,
      Membership membership});

  $MembershipCopyWith<$Res> get membership;
}

/// @nodoc
class _$UserMembershipInfoDTOCopyWithImpl<$Res,
        $Val extends UserMembershipInfoDTO>
    implements $UserMembershipInfoDTOCopyWith<$Res> {
  _$UserMembershipInfoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membershipStartTime = null,
    Object? membershipEndTime = null,
    Object? price = null,
    Object? paymentTime = null,
    Object? membership = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      membershipStartTime: null == membershipStartTime
          ? _value.membershipStartTime
          : membershipStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      membershipEndTime: null == membershipEndTime
          ? _value.membershipEndTime
          : membershipEndTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MembershipCopyWith<$Res> get membership {
    return $MembershipCopyWith<$Res>(_value.membership, (value) {
      return _then(_value.copyWith(membership: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserMembershipInfoDTOCopyWith<$Res>
    implements $UserMembershipInfoDTOCopyWith<$Res> {
  factory _$$_UserMembershipInfoDTOCopyWith(_$_UserMembershipInfoDTO value,
          $Res Function(_$_UserMembershipInfoDTO) then) =
      __$$_UserMembershipInfoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String membershipStartTime,
      String membershipEndTime,
      int price,
      String paymentTime,
      Membership membership});

  @override
  $MembershipCopyWith<$Res> get membership;
}

/// @nodoc
class __$$_UserMembershipInfoDTOCopyWithImpl<$Res>
    extends _$UserMembershipInfoDTOCopyWithImpl<$Res, _$_UserMembershipInfoDTO>
    implements _$$_UserMembershipInfoDTOCopyWith<$Res> {
  __$$_UserMembershipInfoDTOCopyWithImpl(_$_UserMembershipInfoDTO _value,
      $Res Function(_$_UserMembershipInfoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membershipStartTime = null,
    Object? membershipEndTime = null,
    Object? price = null,
    Object? paymentTime = null,
    Object? membership = null,
  }) {
    return _then(_$_UserMembershipInfoDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      membershipStartTime: null == membershipStartTime
          ? _value.membershipStartTime
          : membershipStartTime // ignore: cast_nullable_to_non_nullable
              as String,
      membershipEndTime: null == membershipEndTime
          ? _value.membershipEndTime
          : membershipEndTime // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      paymentTime: null == paymentTime
          ? _value.paymentTime
          : paymentTime // ignore: cast_nullable_to_non_nullable
              as String,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserMembershipInfoDTO
    with DiagnosticableTreeMixin
    implements _UserMembershipInfoDTO {
  _$_UserMembershipInfoDTO(
      {required this.id,
      required this.membershipStartTime,
      required this.membershipEndTime,
      required this.price,
      required this.paymentTime,
      required this.membership});

  factory _$_UserMembershipInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserMembershipInfoDTOFromJson(json);

  @override
  int id;
  @override
  String membershipStartTime;
  @override
  String membershipEndTime;
  @override
  int price;
  @override
  String paymentTime;
  @override
  Membership membership;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserMembershipInfoDTO(id: $id, membershipStartTime: $membershipStartTime, membershipEndTime: $membershipEndTime, price: $price, paymentTime: $paymentTime, membership: $membership)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserMembershipInfoDTO'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('membershipStartTime', membershipStartTime))
      ..add(DiagnosticsProperty('membershipEndTime', membershipEndTime))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('paymentTime', paymentTime))
      ..add(DiagnosticsProperty('membership', membership));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserMembershipInfoDTOCopyWith<_$_UserMembershipInfoDTO> get copyWith =>
      __$$_UserMembershipInfoDTOCopyWithImpl<_$_UserMembershipInfoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserMembershipInfoDTOToJson(
      this,
    );
  }
}

abstract class _UserMembershipInfoDTO implements UserMembershipInfoDTO {
  factory _UserMembershipInfoDTO(
      {required int id,
      required String membershipStartTime,
      required String membershipEndTime,
      required int price,
      required String paymentTime,
      required Membership membership}) = _$_UserMembershipInfoDTO;

  factory _UserMembershipInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_UserMembershipInfoDTO.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get membershipStartTime;
  set membershipStartTime(String value);
  @override
  String get membershipEndTime;
  set membershipEndTime(String value);
  @override
  int get price;
  set price(int value);
  @override
  String get paymentTime;
  set paymentTime(String value);
  @override
  Membership get membership;
  set membership(Membership value);
  @override
  @JsonKey(ignore: true)
  _$$_UserMembershipInfoDTOCopyWith<_$_UserMembershipInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
