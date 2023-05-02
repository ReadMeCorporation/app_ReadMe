// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'publisher.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Publisher _$PublisherFromJson(Map<String, dynamic> json) {
  return _Publisher.fromJson(json);
}

/// @nodoc
mixin _$Publisher {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get businessNumber => throw _privateConstructorUsedError;
  String get businessName => throw _privateConstructorUsedError;
  String get joinTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PublisherCopyWith<Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublisherCopyWith<$Res> {
  factory $PublisherCopyWith(Publisher value, $Res Function(Publisher) then) =
      _$PublisherCopyWithImpl<$Res, Publisher>;
  @useResult
  $Res call(
      {int id,
      String username,
      String role,
      String businessNumber,
      String businessName,
      String joinTime});
}

/// @nodoc
class _$PublisherCopyWithImpl<$Res, $Val extends Publisher>
    implements $PublisherCopyWith<$Res> {
  _$PublisherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? role = null,
    Object? businessNumber = null,
    Object? businessName = null,
    Object? joinTime = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      businessNumber: null == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PublisherCopyWith<$Res> implements $PublisherCopyWith<$Res> {
  factory _$$_PublisherCopyWith(
          _$_Publisher value, $Res Function(_$_Publisher) then) =
      __$$_PublisherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String role,
      String businessNumber,
      String businessName,
      String joinTime});
}

/// @nodoc
class __$$_PublisherCopyWithImpl<$Res>
    extends _$PublisherCopyWithImpl<$Res, _$_Publisher>
    implements _$$_PublisherCopyWith<$Res> {
  __$$_PublisherCopyWithImpl(
      _$_Publisher _value, $Res Function(_$_Publisher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? role = null,
    Object? businessNumber = null,
    Object? businessName = null,
    Object? joinTime = null,
  }) {
    return _then(_$_Publisher(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      businessNumber: null == businessNumber
          ? _value.businessNumber
          : businessNumber // ignore: cast_nullable_to_non_nullable
              as String,
      businessName: null == businessName
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String,
      joinTime: null == joinTime
          ? _value.joinTime
          : joinTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Publisher with DiagnosticableTreeMixin implements _Publisher {
  const _$_Publisher(
      {required this.id,
      required this.username,
      required this.role,
      required this.businessNumber,
      required this.businessName,
      required this.joinTime});

  factory _$_Publisher.fromJson(Map<String, dynamic> json) =>
      _$$_PublisherFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final String role;
  @override
  final String businessNumber;
  @override
  final String businessName;
  @override
  final String joinTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Publisher(id: $id, username: $username, role: $role, businessNumber: $businessNumber, businessName: $businessName, joinTime: $joinTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Publisher'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('username', username))
      ..add(DiagnosticsProperty('role', role))
      ..add(DiagnosticsProperty('businessNumber', businessNumber))
      ..add(DiagnosticsProperty('businessName', businessName))
      ..add(DiagnosticsProperty('joinTime', joinTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Publisher &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.businessNumber, businessNumber) ||
                other.businessNumber == businessNumber) &&
            (identical(other.businessName, businessName) ||
                other.businessName == businessName) &&
            (identical(other.joinTime, joinTime) ||
                other.joinTime == joinTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, username, role, businessNumber, businessName, joinTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PublisherCopyWith<_$_Publisher> get copyWith =>
      __$$_PublisherCopyWithImpl<_$_Publisher>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PublisherToJson(
      this,
    );
  }
}

abstract class _Publisher implements Publisher {
  const factory _Publisher(
      {required final int id,
      required final String username,
      required final String role,
      required final String businessNumber,
      required final String businessName,
      required final String joinTime}) = _$_Publisher;

  factory _Publisher.fromJson(Map<String, dynamic> json) =
      _$_Publisher.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  String get role;
  @override
  String get businessNumber;
  @override
  String get businessName;
  @override
  String get joinTime;
  @override
  @JsonKey(ignore: true)
  _$$_PublisherCopyWith<_$_Publisher> get copyWith =>
      throw _privateConstructorUsedError;
}
