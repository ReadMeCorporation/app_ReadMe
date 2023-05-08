// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_storage_box_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableStorageBoxTab _$TableStorageBoxTabFromJson(Map<String, dynamic> json) {
  return _TableStorageBoxTab.fromJson(json);
}

/// @nodoc
mixin _$TableStorageBoxTab {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableStorageBoxTabCopyWith<TableStorageBoxTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableStorageBoxTabCopyWith<$Res> {
  factory $TableStorageBoxTabCopyWith(
          TableStorageBoxTab value, $Res Function(TableStorageBoxTab) then) =
      _$TableStorageBoxTabCopyWithImpl<$Res, TableStorageBoxTab>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$TableStorageBoxTabCopyWithImpl<$Res, $Val extends TableStorageBoxTab>
    implements $TableStorageBoxTabCopyWith<$Res> {
  _$TableStorageBoxTabCopyWithImpl(this._value, this._then);

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
abstract class _$$_TableStorageBoxTabCopyWith<$Res>
    implements $TableStorageBoxTabCopyWith<$Res> {
  factory _$$_TableStorageBoxTabCopyWith(_$_TableStorageBoxTab value,
          $Res Function(_$_TableStorageBoxTab) then) =
      __$$_TableStorageBoxTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_TableStorageBoxTabCopyWithImpl<$Res>
    extends _$TableStorageBoxTabCopyWithImpl<$Res, _$_TableStorageBoxTab>
    implements _$$_TableStorageBoxTabCopyWith<$Res> {
  __$$_TableStorageBoxTabCopyWithImpl(
      _$_TableStorageBoxTab _value, $Res Function(_$_TableStorageBoxTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_TableStorageBoxTab(
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
class _$_TableStorageBoxTab
    with DiagnosticableTreeMixin
    implements _TableStorageBoxTab {
  _$_TableStorageBoxTab({required this.requestName, required this.name});

  factory _$_TableStorageBoxTab.fromJson(Map<String, dynamic> json) =>
      _$$_TableStorageBoxTabFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableStorageBoxTab(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableStorageBoxTab'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableStorageBoxTab &&
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
  _$$_TableStorageBoxTabCopyWith<_$_TableStorageBoxTab> get copyWith =>
      __$$_TableStorageBoxTabCopyWithImpl<_$_TableStorageBoxTab>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableStorageBoxTabToJson(
      this,
    );
  }
}

abstract class _TableStorageBoxTab implements TableStorageBoxTab {
  factory _TableStorageBoxTab(
      {required final String requestName,
      required final String name}) = _$_TableStorageBoxTab;

  factory _TableStorageBoxTab.fromJson(Map<String, dynamic> json) =
      _$_TableStorageBoxTab.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TableStorageBoxTabCopyWith<_$_TableStorageBoxTab> get copyWith =>
      throw _privateConstructorUsedError;
}
