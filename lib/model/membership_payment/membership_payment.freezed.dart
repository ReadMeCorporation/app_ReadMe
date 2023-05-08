// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MembershipPayment _$MembershipPaymentFromJson(Map<String, dynamic> json) {
  return _MembershipPayment.fromJson(json);
}

/// @nodoc
mixin _$MembershipPayment {
  int get id => throw _privateConstructorUsedError;
  Membership get membership => throw _privateConstructorUsedError;
  String get membershipStartTime => throw _privateConstructorUsedError;
  String get membershipEndTime => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get paymentTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipPaymentCopyWith<MembershipPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipPaymentCopyWith<$Res> {
  factory $MembershipPaymentCopyWith(
          MembershipPayment value, $Res Function(MembershipPayment) then) =
      _$MembershipPaymentCopyWithImpl<$Res, MembershipPayment>;
  @useResult
  $Res call(
      {int id,
      Membership membership,
      String membershipStartTime,
      String membershipEndTime,
      int price,
      String paymentTime});

  $MembershipCopyWith<$Res> get membership;
}

/// @nodoc
class _$MembershipPaymentCopyWithImpl<$Res, $Val extends MembershipPayment>
    implements $MembershipPaymentCopyWith<$Res> {
  _$MembershipPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membership = null,
    Object? membershipStartTime = null,
    Object? membershipEndTime = null,
    Object? price = null,
    Object? paymentTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership,
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
abstract class _$$_MembershipPaymentCopyWith<$Res>
    implements $MembershipPaymentCopyWith<$Res> {
  factory _$$_MembershipPaymentCopyWith(_$_MembershipPayment value,
          $Res Function(_$_MembershipPayment) then) =
      __$$_MembershipPaymentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Membership membership,
      String membershipStartTime,
      String membershipEndTime,
      int price,
      String paymentTime});

  @override
  $MembershipCopyWith<$Res> get membership;
}

/// @nodoc
class __$$_MembershipPaymentCopyWithImpl<$Res>
    extends _$MembershipPaymentCopyWithImpl<$Res, _$_MembershipPayment>
    implements _$$_MembershipPaymentCopyWith<$Res> {
  __$$_MembershipPaymentCopyWithImpl(
      _$_MembershipPayment _value, $Res Function(_$_MembershipPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? membership = null,
    Object? membershipStartTime = null,
    Object? membershipEndTime = null,
    Object? price = null,
    Object? paymentTime = null,
  }) {
    return _then(_$_MembershipPayment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      membership: null == membership
          ? _value.membership
          : membership // ignore: cast_nullable_to_non_nullable
              as Membership,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MembershipPayment
    with DiagnosticableTreeMixin
    implements _MembershipPayment {
  _$_MembershipPayment(
      {required this.id,
      required this.membership,
      required this.membershipStartTime,
      required this.membershipEndTime,
      required this.price,
      required this.paymentTime});

  factory _$_MembershipPayment.fromJson(Map<String, dynamic> json) =>
      _$$_MembershipPaymentFromJson(json);

  @override
  final int id;
  @override
  final Membership membership;
  @override
  final String membershipStartTime;
  @override
  final String membershipEndTime;
  @override
  final int price;
  @override
  final String paymentTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MembershipPayment(id: $id, membership: $membership, membershipStartTime: $membershipStartTime, membershipEndTime: $membershipEndTime, price: $price, paymentTime: $paymentTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MembershipPayment'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('membership', membership))
      ..add(DiagnosticsProperty('membershipStartTime', membershipStartTime))
      ..add(DiagnosticsProperty('membershipEndTime', membershipEndTime))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('paymentTime', paymentTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MembershipPayment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.membership, membership) ||
                other.membership == membership) &&
            (identical(other.membershipStartTime, membershipStartTime) ||
                other.membershipStartTime == membershipStartTime) &&
            (identical(other.membershipEndTime, membershipEndTime) ||
                other.membershipEndTime == membershipEndTime) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.paymentTime, paymentTime) ||
                other.paymentTime == paymentTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, membership,
      membershipStartTime, membershipEndTime, price, paymentTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipPaymentCopyWith<_$_MembershipPayment> get copyWith =>
      __$$_MembershipPaymentCopyWithImpl<_$_MembershipPayment>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembershipPaymentToJson(
      this,
    );
  }
}

abstract class _MembershipPayment implements MembershipPayment {
  factory _MembershipPayment(
      {required final int id,
      required final Membership membership,
      required final String membershipStartTime,
      required final String membershipEndTime,
      required final int price,
      required final String paymentTime}) = _$_MembershipPayment;

  factory _MembershipPayment.fromJson(Map<String, dynamic> json) =
      _$_MembershipPayment.fromJson;

  @override
  int get id;
  @override
  Membership get membership;
  @override
  String get membershipStartTime;
  @override
  String get membershipEndTime;
  @override
  int get price;
  @override
  String get paymentTime;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipPaymentCopyWith<_$_MembershipPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
