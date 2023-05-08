// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserPageModel {
  UserMembershipInfoDTO? get userMembershipInfoDTO =>
      throw _privateConstructorUsedError;
  set userMembershipInfoDTO(UserMembershipInfoDTO? value) =>
      throw _privateConstructorUsedError;
  TableUser? get user => throw _privateConstructorUsedError;
  set user(TableUser? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserPageModelCopyWith<UserPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPageModelCopyWith<$Res> {
  factory $UserPageModelCopyWith(
          UserPageModel value, $Res Function(UserPageModel) then) =
      _$UserPageModelCopyWithImpl<$Res, UserPageModel>;
  @useResult
  $Res call({UserMembershipInfoDTO? userMembershipInfoDTO, TableUser? user});

  $UserMembershipInfoDTOCopyWith<$Res>? get userMembershipInfoDTO;
}

/// @nodoc
class _$UserPageModelCopyWithImpl<$Res, $Val extends UserPageModel>
    implements $UserPageModelCopyWith<$Res> {
  _$UserPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMembershipInfoDTO = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      userMembershipInfoDTO: freezed == userMembershipInfoDTO
          ? _value.userMembershipInfoDTO
          : userMembershipInfoDTO // ignore: cast_nullable_to_non_nullable
              as UserMembershipInfoDTO?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TableUser?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMembershipInfoDTOCopyWith<$Res>? get userMembershipInfoDTO {
    if (_value.userMembershipInfoDTO == null) {
      return null;
    }

    return $UserMembershipInfoDTOCopyWith<$Res>(_value.userMembershipInfoDTO!,
        (value) {
      return _then(_value.copyWith(userMembershipInfoDTO: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserPageModelCopyWith<$Res>
    implements $UserPageModelCopyWith<$Res> {
  factory _$$_UserPageModelCopyWith(
          _$_UserPageModel value, $Res Function(_$_UserPageModel) then) =
      __$$_UserPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserMembershipInfoDTO? userMembershipInfoDTO, TableUser? user});

  @override
  $UserMembershipInfoDTOCopyWith<$Res>? get userMembershipInfoDTO;
}

/// @nodoc
class __$$_UserPageModelCopyWithImpl<$Res>
    extends _$UserPageModelCopyWithImpl<$Res, _$_UserPageModel>
    implements _$$_UserPageModelCopyWith<$Res> {
  __$$_UserPageModelCopyWithImpl(
      _$_UserPageModel _value, $Res Function(_$_UserPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userMembershipInfoDTO = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_UserPageModel(
      userMembershipInfoDTO: freezed == userMembershipInfoDTO
          ? _value.userMembershipInfoDTO
          : userMembershipInfoDTO // ignore: cast_nullable_to_non_nullable
              as UserMembershipInfoDTO?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TableUser?,
    ));
  }
}

/// @nodoc

class _$_UserPageModel implements _UserPageModel {
  _$_UserPageModel({this.userMembershipInfoDTO, this.user});

  @override
  UserMembershipInfoDTO? userMembershipInfoDTO;
  @override
  TableUser? user;

  @override
  String toString() {
    return 'UserPageModel(userMembershipInfoDTO: $userMembershipInfoDTO, user: $user)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserPageModelCopyWith<_$_UserPageModel> get copyWith =>
      __$$_UserPageModelCopyWithImpl<_$_UserPageModel>(this, _$identity);
}

abstract class _UserPageModel implements UserPageModel {
  factory _UserPageModel(
      {UserMembershipInfoDTO? userMembershipInfoDTO,
      TableUser? user}) = _$_UserPageModel;

  @override
  UserMembershipInfoDTO? get userMembershipInfoDTO;
  set userMembershipInfoDTO(UserMembershipInfoDTO? value);
  @override
  TableUser? get user;
  set user(TableUser? value);
  @override
  @JsonKey(ignore: true)
  _$$_UserPageModelCopyWith<_$_UserPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
