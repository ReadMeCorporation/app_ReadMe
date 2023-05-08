// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_small_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TableSamllCategory _$TableSamllCategoryFromJson(Map<String, dynamic> json) {
  return _TableSamllCategory.fromJson(json);
}

/// @nodoc
mixin _$TableSamllCategory {
  int get bigCategoryId => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableSamllCategoryCopyWith<TableSamllCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableSamllCategoryCopyWith<$Res> {
  factory $TableSamllCategoryCopyWith(
          TableSamllCategory value, $Res Function(TableSamllCategory) then) =
      _$TableSamllCategoryCopyWithImpl<$Res, TableSamllCategory>;
  @useResult
  $Res call({int bigCategoryId, int id, String name});
}

/// @nodoc
class _$TableSamllCategoryCopyWithImpl<$Res, $Val extends TableSamllCategory>
    implements $TableSamllCategoryCopyWith<$Res> {
  _$TableSamllCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigCategoryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      bigCategoryId: null == bigCategoryId
          ? _value.bigCategoryId
          : bigCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TableSamllCategoryCopyWith<$Res>
    implements $TableSamllCategoryCopyWith<$Res> {
  factory _$$_TableSamllCategoryCopyWith(_$_TableSamllCategory value,
          $Res Function(_$_TableSamllCategory) then) =
      __$$_TableSamllCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int bigCategoryId, int id, String name});
}

/// @nodoc
class __$$_TableSamllCategoryCopyWithImpl<$Res>
    extends _$TableSamllCategoryCopyWithImpl<$Res, _$_TableSamllCategory>
    implements _$$_TableSamllCategoryCopyWith<$Res> {
  __$$_TableSamllCategoryCopyWithImpl(
      _$_TableSamllCategory _value, $Res Function(_$_TableSamllCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bigCategoryId = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_TableSamllCategory(
      bigCategoryId: null == bigCategoryId
          ? _value.bigCategoryId
          : bigCategoryId // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TableSamllCategory
    with DiagnosticableTreeMixin
    implements _TableSamllCategory {
  _$_TableSamllCategory(
      {required this.bigCategoryId, required this.id, required this.name});

  factory _$_TableSamllCategory.fromJson(Map<String, dynamic> json) =>
      _$$_TableSamllCategoryFromJson(json);

  @override
  final int bigCategoryId;
  @override
  final int id;
  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TableSamllCategory(bigCategoryId: $bigCategoryId, id: $id, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TableSamllCategory'))
      ..add(DiagnosticsProperty('bigCategoryId', bigCategoryId))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TableSamllCategory &&
            (identical(other.bigCategoryId, bigCategoryId) ||
                other.bigCategoryId == bigCategoryId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bigCategoryId, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TableSamllCategoryCopyWith<_$_TableSamllCategory> get copyWith =>
      __$$_TableSamllCategoryCopyWithImpl<_$_TableSamllCategory>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TableSamllCategoryToJson(
      this,
    );
  }
}

abstract class _TableSamllCategory implements TableSamllCategory {
  factory _TableSamllCategory(
      {required final int bigCategoryId,
      required final int id,
      required final String name}) = _$_TableSamllCategory;

  factory _TableSamllCategory.fromJson(Map<String, dynamic> json) =
      _$_TableSamllCategory.fromJson;

  @override
  int get bigCategoryId;
  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_TableSamllCategoryCopyWith<_$_TableSamllCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
