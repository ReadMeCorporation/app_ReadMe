// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_main_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableMainTab _$TableMainTabFromJson(Map<String, dynamic> json) {
  return _TableMainTab.fromJson(json);
}

/// @nodoc
mixin _$TableMainTab {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableMainTabCopyWith<TableMainTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableMainTabCopyWith<$Res> {
  factory $TableMainTabCopyWith(
          TableMainTab value, $Res Function(TableMainTab) then) =
      _$TableMainTabCopyWithImpl<$Res, TableMainTab>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$TableMainTabCopyWithImpl<$Res, $Val extends TableMainTab>
    implements $TableMainTabCopyWith<$Res> {
  _$TableMainTabCopyWithImpl(this._value, this._then);

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
abstract class _$$_TableMainTabCopyWith<$Res>
    implements $TableMainTabCopyWith<$Res> {
  factory _$$_TableMainTabCopyWith(
          _$_TableMainTab value, $Res Function(_$_TableMainTab) then) =
      __$$_TableMainTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_TableMainTabCopyWithImpl<$Res>
    extends _$TableMainTabCopyWithImpl<$Res, _$_TableMainTab>
    implements _$$_TableMainTabCopyWith<$Res> {
  __$$_TableMainTabCopyWithImpl(
      _$_TableMainTab _value, $Res Function(_$_TableMainTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_TableMainTab(
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
class _$_TableMainTab with DiagnosticableTreeMixin implements _TableMainTab {
  _$_TableMainTab({required this.requestName, required this.name});

  factory _$_TableMainTab.fromJson(Map<String, dynamic> json) =>
      _$$_TableMainTabFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableMainTab(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableMainTab'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableMainTab &&
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
  _$$_TableMainTabCopyWith<_$_TableMainTab> get copyWith =>
      __$$_TableMainTabCopyWithImpl<_$_TableMainTab>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableMainTabToJson(
      this,
    );
  }
}

abstract class _TableMainTab implements TableMainTab {
  factory _TableMainTab(
      {required final String requestName,
      required final String name}) = _$_TableMainTab;

  factory _TableMainTab.fromJson(Map<String, dynamic> json) =
      _$_TableMainTab.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TableMainTabCopyWith<_$_TableMainTab> get copyWith =>
      throw _privateConstructorUsedError;
}
