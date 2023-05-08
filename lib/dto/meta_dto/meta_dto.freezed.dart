// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MetaDTO _$MetaDTOFromJson(Map<String, dynamic> json) {
  return _MetaDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaDTO {
  List<BigCategory> get bigCategory => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<CommonDTO> get storageBoxTabs => throw _privateConstructorUsedError;
  List<CommonDTO> get mainTabs => throw _privateConstructorUsedError;
  List<CommonDTO> get paymentTabs => throw _privateConstructorUsedError;
  List<String> get notificationTypes => throw _privateConstructorUsedError;
  String? get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDTOCopyWith<MetaDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDTOCopyWith<$Res> {
  factory $MetaDTOCopyWith(MetaDTO value, $Res Function(MetaDTO) then) =
      _$MetaDTOCopyWithImpl<$Res, MetaDTO>;
  @useResult
  $Res call(
      {List<BigCategory> bigCategory,
      User? user,
      List<CommonDTO> storageBoxTabs,
      List<CommonDTO> mainTabs,
      List<CommonDTO> paymentTabs,
      List<String> notificationTypes,
      String? jwt});
}

/// @nodoc
class _$MetaDTOCopyWithImpl<$Res, $Val extends MetaDTO>
    implements $MetaDTOCopyWith<$Res> {
  _$MetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigCategory = null,
    Object? user = freezed,
    Object? storageBoxTabs = null,
    Object? mainTabs = null,
    Object? paymentTabs = null,
    Object? notificationTypes = null,
    Object? jwt = freezed,
  }) {
    return _then(_value.copyWith(
      bigCategory: null == bigCategory
          ? _value.bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as List<BigCategory>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      storageBoxTabs: null == storageBoxTabs
          ? _value.storageBoxTabs
          : storageBoxTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      mainTabs: null == mainTabs
          ? _value.mainTabs
          : mainTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      paymentTabs: null == paymentTabs
          ? _value.paymentTabs
          : paymentTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      notificationTypes: null == notificationTypes
          ? _value.notificationTypes
          : notificationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MetaDTOCopyWith<$Res> implements $MetaDTOCopyWith<$Res> {
  factory _$$_MetaDTOCopyWith(
          _$_MetaDTO value, $Res Function(_$_MetaDTO) then) =
      __$$_MetaDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BigCategory> bigCategory,
      User? user,
      List<CommonDTO> storageBoxTabs,
      List<CommonDTO> mainTabs,
      List<CommonDTO> paymentTabs,
      List<String> notificationTypes,
      String? jwt});
}

/// @nodoc
class __$$_MetaDTOCopyWithImpl<$Res>
    extends _$MetaDTOCopyWithImpl<$Res, _$_MetaDTO>
    implements _$$_MetaDTOCopyWith<$Res> {
  __$$_MetaDTOCopyWithImpl(_$_MetaDTO _value, $Res Function(_$_MetaDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigCategory = null,
    Object? user = freezed,
    Object? storageBoxTabs = null,
    Object? mainTabs = null,
    Object? paymentTabs = null,
    Object? notificationTypes = null,
    Object? jwt = freezed,
  }) {
    return _then(_$_MetaDTO(
      bigCategory: null == bigCategory
          ? _value._bigCategory
          : bigCategory // ignore: cast_nullable_to_non_nullable
              as List<BigCategory>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      storageBoxTabs: null == storageBoxTabs
          ? _value._storageBoxTabs
          : storageBoxTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      mainTabs: null == mainTabs
          ? _value._mainTabs
          : mainTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      paymentTabs: null == paymentTabs
          ? _value._paymentTabs
          : paymentTabs // ignore: cast_nullable_to_non_nullable
              as List<CommonDTO>,
      notificationTypes: null == notificationTypes
          ? _value._notificationTypes
          : notificationTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      jwt: freezed == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDTO with DiagnosticableTreeMixin implements _MetaDTO {
  _$_MetaDTO(
      {required final List<BigCategory> bigCategory,
      this.user,
      required final List<CommonDTO> storageBoxTabs,
      required final List<CommonDTO> mainTabs,
      required final List<CommonDTO> paymentTabs,
      required final List<String> notificationTypes,
      this.jwt})
      : _bigCategory = bigCategory,
        _storageBoxTabs = storageBoxTabs,
        _mainTabs = mainTabs,
        _paymentTabs = paymentTabs,
        _notificationTypes = notificationTypes;

  factory _$_MetaDTO.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDTOFromJson(json);

  final List<BigCategory> _bigCategory;
  @override
  List<BigCategory> get bigCategory {
    if (_bigCategory is EqualUnmodifiableListView) return _bigCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bigCategory);
  }

  @override
  final User? user;
  final List<CommonDTO> _storageBoxTabs;
  @override
  List<CommonDTO> get storageBoxTabs {
    if (_storageBoxTabs is EqualUnmodifiableListView) return _storageBoxTabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_storageBoxTabs);
  }

  final List<CommonDTO> _mainTabs;
  @override
  List<CommonDTO> get mainTabs {
    if (_mainTabs is EqualUnmodifiableListView) return _mainTabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mainTabs);
  }

  final List<CommonDTO> _paymentTabs;
  @override
  List<CommonDTO> get paymentTabs {
    if (_paymentTabs is EqualUnmodifiableListView) return _paymentTabs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_paymentTabs);
  }

  final List<String> _notificationTypes;
  @override
  List<String> get notificationTypes {
    if (_notificationTypes is EqualUnmodifiableListView)
      return _notificationTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notificationTypes);
  }

  @override
  final String? jwt;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MetaDTO(bigCategory: $bigCategory, user: $user, storageBoxTabs: $storageBoxTabs, mainTabs: $mainTabs, paymentTabs: $paymentTabs, notificationTypes: $notificationTypes, jwt: $jwt)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MetaDTO'))
      ..add(DiagnosticsProperty('bigCategory', bigCategory))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('storageBoxTabs', storageBoxTabs))
      ..add(DiagnosticsProperty('mainTabs', mainTabs))
      ..add(DiagnosticsProperty('paymentTabs', paymentTabs))
      ..add(DiagnosticsProperty('notificationTypes', notificationTypes))
      ..add(DiagnosticsProperty('jwt', jwt));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDTO &&
            const DeepCollectionEquality()
                .equals(other._bigCategory, _bigCategory) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._storageBoxTabs, _storageBoxTabs) &&
            const DeepCollectionEquality().equals(other._mainTabs, _mainTabs) &&
            const DeepCollectionEquality()
                .equals(other._paymentTabs, _paymentTabs) &&
            const DeepCollectionEquality()
                .equals(other._notificationTypes, _notificationTypes) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bigCategory),
      user,
      const DeepCollectionEquality().hash(_storageBoxTabs),
      const DeepCollectionEquality().hash(_mainTabs),
      const DeepCollectionEquality().hash(_paymentTabs),
      const DeepCollectionEquality().hash(_notificationTypes),
      jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      __$$_MetaDTOCopyWithImpl<_$_MetaDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDTOToJson(
      this,
    );
  }
}

abstract class _MetaDTO implements MetaDTO {
  factory _MetaDTO(
      {required final List<BigCategory> bigCategory,
      final User? user,
      required final List<CommonDTO> storageBoxTabs,
      required final List<CommonDTO> mainTabs,
      required final List<CommonDTO> paymentTabs,
      required final List<String> notificationTypes,
      final String? jwt}) = _$_MetaDTO;

  factory _MetaDTO.fromJson(Map<String, dynamic> json) = _$_MetaDTO.fromJson;

  @override
  List<BigCategory> get bigCategory;
  @override
  User? get user;
  @override
  List<CommonDTO> get storageBoxTabs;
  @override
  List<CommonDTO> get mainTabs;
  @override
  List<CommonDTO> get paymentTabs;
  @override
  List<String> get notificationTypes;
  @override
  String? get jwt;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDTOCopyWith<_$_MetaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

CommonDTO _$CommonDTOFromJson(Map<String, dynamic> json) {
  return _CommonDTO.fromJson(json);
}

/// @nodoc
mixin _$CommonDTO {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommonDTOCopyWith<CommonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonDTOCopyWith<$Res> {
  factory $CommonDTOCopyWith(CommonDTO value, $Res Function(CommonDTO) then) =
      _$CommonDTOCopyWithImpl<$Res, CommonDTO>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$CommonDTOCopyWithImpl<$Res, $Val extends CommonDTO>
    implements $CommonDTOCopyWith<$Res> {
  _$CommonDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      requestName: null == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CommonDTOCopyWith<$Res> implements $CommonDTOCopyWith<$Res> {
  factory _$$_CommonDTOCopyWith(
          _$_CommonDTO value, $Res Function(_$_CommonDTO) then) =
      __$$_CommonDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_CommonDTOCopyWithImpl<$Res>
    extends _$CommonDTOCopyWithImpl<$Res, _$_CommonDTO>
    implements _$$_CommonDTOCopyWith<$Res> {
  __$$_CommonDTOCopyWithImpl(
      _$_CommonDTO _value, $Res Function(_$_CommonDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_CommonDTO(
      requestName: null == requestName
          ? _value.requestName
          : requestName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommonDTO with DiagnosticableTreeMixin implements _CommonDTO {
  _$_CommonDTO({required this.requestName, required this.name});

  factory _$_CommonDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CommonDTOFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CommonDTO(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CommonDTO'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommonDTO &&
            (identical(other.requestName, requestName) ||
                other.requestName == requestName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestName, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommonDTOCopyWith<_$_CommonDTO> get copyWith =>
      __$$_CommonDTOCopyWithImpl<_$_CommonDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommonDTOToJson(
      this,
    );
  }
}

abstract class _CommonDTO implements CommonDTO {
  factory _CommonDTO(
      {required final String requestName,
      required final String name}) = _$_CommonDTO;

  factory _CommonDTO.fromJson(Map<String, dynamic> json) =
      _$_CommonDTO.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CommonDTOCopyWith<_$_CommonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
