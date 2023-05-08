// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_payment_tab.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TablePaymentTab _$TablePaymentTabFromJson(Map<String, dynamic> json) {
  return _TablePaymentTab.fromJson(json);
}

/// @nodoc
mixin _$TablePaymentTab {
  String get requestName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TablePaymentTabCopyWith<TablePaymentTab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TablePaymentTabCopyWith<$Res> {
  factory $TablePaymentTabCopyWith(
          TablePaymentTab value, $Res Function(TablePaymentTab) then) =
      _$TablePaymentTabCopyWithImpl<$Res, TablePaymentTab>;
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class _$TablePaymentTabCopyWithImpl<$Res, $Val extends TablePaymentTab>
    implements $TablePaymentTabCopyWith<$Res> {
  _$TablePaymentTabCopyWithImpl(this._value, this._then);

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
abstract class _$$_TablePaymentTabCopyWith<$Res>
    implements $TablePaymentTabCopyWith<$Res> {
  factory _$$_TablePaymentTabCopyWith(
          _$_TablePaymentTab value, $Res Function(_$_TablePaymentTab) then) =
      __$$_TablePaymentTabCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String requestName, String name});
}

/// @nodoc
class __$$_TablePaymentTabCopyWithImpl<$Res>
    extends _$TablePaymentTabCopyWithImpl<$Res, _$_TablePaymentTab>
    implements _$$_TablePaymentTabCopyWith<$Res> {
  __$$_TablePaymentTabCopyWithImpl(
      _$_TablePaymentTab _value, $Res Function(_$_TablePaymentTab) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestName = null,
    Object? name = null,
  }) {
    return _then(_$_TablePaymentTab(
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
class _$_TablePaymentTab
    with DiagnosticableTreeMixin
    implements _TablePaymentTab {
  _$_TablePaymentTab({required this.requestName, required this.name});

  factory _$_TablePaymentTab.fromJson(Map<String, dynamic> json) =>
      _$$_TablePaymentTabFromJson(json);

  @override
  final String requestName;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TablePaymentTab(requestName: $requestName, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TablePaymentTab'))
      ..add(DiagnosticsProperty('requestName', requestName))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TablePaymentTab &&
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
  _$$_TablePaymentTabCopyWith<_$_TablePaymentTab> get copyWith =>
      __$$_TablePaymentTabCopyWithImpl<_$_TablePaymentTab>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TablePaymentTabToJson(
      this,
    );
  }
}

abstract class _TablePaymentTab implements TablePaymentTab {
  factory _TablePaymentTab(
      {required final String requestName,
      required final String name}) = _$_TablePaymentTab;

  factory _TablePaymentTab.fromJson(Map<String, dynamic> json) =
      _$_TablePaymentTab.fromJson;

  @override
  String get requestName;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TablePaymentTabCopyWith<_$_TablePaymentTab> get copyWith =>
      throw _privateConstructorUsedError;
}
