// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'membership.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Membership _$MembershipFromJson(Map<String, dynamic> json) {
  return _Membership.fromJson(json);
}

/// @nodoc
mixin _$Membership {
  int get id => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  String get membershipTerm => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MembershipCopyWith<Membership> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MembershipCopyWith<$Res> {
  factory $MembershipCopyWith(
          Membership value, $Res Function(Membership) then) =
      _$MembershipCopyWithImpl<$Res, Membership>;
  @useResult
  $Res call({int id, int price, String membershipTerm, String status});
}

/// @nodoc
class _$MembershipCopyWithImpl<$Res, $Val extends Membership>
    implements $MembershipCopyWith<$Res> {
  _$MembershipCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? membershipTerm = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      membershipTerm: null == membershipTerm
          ? _value.membershipTerm
          : membershipTerm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MembershipCopyWith<$Res>
    implements $MembershipCopyWith<$Res> {
  factory _$$_MembershipCopyWith(
          _$_Membership value, $Res Function(_$_Membership) then) =
      __$$_MembershipCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int price, String membershipTerm, String status});
}

/// @nodoc
class __$$_MembershipCopyWithImpl<$Res>
    extends _$MembershipCopyWithImpl<$Res, _$_Membership>
    implements _$$_MembershipCopyWith<$Res> {
  __$$_MembershipCopyWithImpl(
      _$_Membership _value, $Res Function(_$_Membership) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? price = null,
    Object? membershipTerm = null,
    Object? status = null,
  }) {
    return _then(_$_Membership(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      membershipTerm: null == membershipTerm
          ? _value.membershipTerm
          : membershipTerm // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Membership with DiagnosticableTreeMixin implements _Membership {
  _$_Membership(
      {required this.id,
      required this.price,
      required this.membershipTerm,
      required this.status});

  factory _$_Membership.fromJson(Map<String, dynamic> json) =>
      _$$_MembershipFromJson(json);

  @override
  final int id;
  @override
  final int price;
  @override
  final String membershipTerm;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Membership(id: $id, price: $price, membershipTerm: $membershipTerm, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Membership'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('price', price))
      ..add(DiagnosticsProperty('membershipTerm', membershipTerm))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Membership &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.membershipTerm, membershipTerm) ||
                other.membershipTerm == membershipTerm) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, price, membershipTerm, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MembershipCopyWith<_$_Membership> get copyWith =>
      __$$_MembershipCopyWithImpl<_$_Membership>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MembershipToJson(
      this,
    );
  }
}

abstract class _Membership implements Membership {
  factory _Membership(
      {required final int id,
      required final int price,
      required final String membershipTerm,
      required final String status}) = _$_Membership;

  factory _Membership.fromJson(Map<String, dynamic> json) =
      _$_Membership.fromJson;

  @override
  int get id;
  @override
  int get price;
  @override
  String get membershipTerm;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_MembershipCopyWith<_$_Membership> get copyWith =>
      throw _privateConstructorUsedError;
}
