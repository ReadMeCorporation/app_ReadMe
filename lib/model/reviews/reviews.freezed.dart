// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reviews _$ReviewsFromJson(Map<String, dynamic> json) {
  return _Reviews.fromJson(json);
}

/// @nodoc
mixin _$Reviews {
  int get id => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsCopyWith<Reviews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res, Reviews>;
  @useResult
  $Res call({int id, User user, double stars, String content, String status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ReviewsCopyWithImpl<$Res, $Val extends Reviews>
    implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? stars = null,
    Object? content = null,
    Object? status = null,
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
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ReviewsCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$$_ReviewsCopyWith(
          _$_Reviews value, $Res Function(_$_Reviews) then) =
      __$$_ReviewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, User user, double stars, String content, String status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_ReviewsCopyWithImpl<$Res>
    extends _$ReviewsCopyWithImpl<$Res, _$_Reviews>
    implements _$$_ReviewsCopyWith<$Res> {
  __$$_ReviewsCopyWithImpl(_$_Reviews _value, $Res Function(_$_Reviews) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? stars = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_$_Reviews(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      stars: null == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_Reviews with DiagnosticableTreeMixin implements _Reviews {
  const _$_Reviews(
      {required this.id,
      required this.user,
      required this.stars,
      required this.content,
      required this.status});

  factory _$_Reviews.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsFromJson(json);

  @override
  final int id;
  @override
  final User user;
  @override
  final double stars;
  @override
  final String content;
  @override
  final String status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reviews(id: $id, user: $user, stars: $stars, content: $content, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reviews'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('stars', stars))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reviews &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, user, stars, content, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewsCopyWith<_$_Reviews> get copyWith =>
      __$$_ReviewsCopyWithImpl<_$_Reviews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsToJson(
      this,
    );
  }
}

abstract class _Reviews implements Reviews {
  const factory _Reviews(
      {required final int id,
      required final User user,
      required final double stars,
      required final String content,
      required final String status}) = _$_Reviews;

  factory _Reviews.fromJson(Map<String, dynamic> json) = _$_Reviews.fromJson;

  @override
  int get id;
  @override
  User get user;
  @override
  double get stars;
  @override
  String get content;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewsCopyWith<_$_Reviews> get copyWith =>
      throw _privateConstructorUsedError;
}
