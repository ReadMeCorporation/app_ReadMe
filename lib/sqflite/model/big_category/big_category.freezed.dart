// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'big_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BigCategory _$BigCategoryFromJson(Map<String, dynamic> json) {
  return _BigCategory.fromJson(json);
}

/// @nodoc
mixin _$BigCategory {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<SmallCategory>? get smallCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BigCategoryCopyWith<BigCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BigCategoryCopyWith<$Res> {
  factory $BigCategoryCopyWith(
          BigCategory value, $Res Function(BigCategory) then) =
      _$BigCategoryCopyWithImpl<$Res, BigCategory>;
  @useResult
  $Res call({int id, String name, List<SmallCategory>? smallCategory});
}

/// @nodoc
class _$BigCategoryCopyWithImpl<$Res, $Val extends BigCategory>
    implements $BigCategoryCopyWith<$Res> {
  _$BigCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? smallCategory = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallCategory: freezed == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as List<SmallCategory>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BigCategoryCopyWith<$Res>
    implements $BigCategoryCopyWith<$Res> {
  factory _$$_BigCategoryCopyWith(
          _$_BigCategory value, $Res Function(_$_BigCategory) then) =
      __$$_BigCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<SmallCategory>? smallCategory});
}

/// @nodoc
class __$$_BigCategoryCopyWithImpl<$Res>
    extends _$BigCategoryCopyWithImpl<$Res, _$_BigCategory>
    implements _$$_BigCategoryCopyWith<$Res> {
  __$$_BigCategoryCopyWithImpl(
      _$_BigCategory _value, $Res Function(_$_BigCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? smallCategory = freezed,
  }) {
    return _then(_$_BigCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      smallCategory: freezed == smallCategory
          ? _value._smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as List<SmallCategory>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BigCategory with DiagnosticableTreeMixin implements _BigCategory {
  const _$_BigCategory(
      {required this.id,
      required this.name,
      final List<SmallCategory>? smallCategory})
      : _smallCategory = smallCategory;

  factory _$_BigCategory.fromJson(Map<String, dynamic> json) =>
      _$$_BigCategoryFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<SmallCategory>? _smallCategory;
  @override
  List<SmallCategory>? get smallCategory {
    final value = _smallCategory;
    if (value == null) return null;
    if (_smallCategory is EqualUnmodifiableListView) return _smallCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BigCategory(id: $id, name: $name, smallCategory: $smallCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BigCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('smallCategory', smallCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BigCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._smallCategory, _smallCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_smallCategory));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BigCategoryCopyWith<_$_BigCategory> get copyWith =>
      __$$_BigCategoryCopyWithImpl<_$_BigCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BigCategoryToJson(
      this,
    );
  }
}

abstract class _BigCategory implements BigCategory {
  const factory _BigCategory(
      {required final int id,
      required final String name,
      final List<SmallCategory>? smallCategory}) = _$_BigCategory;

  factory _BigCategory.fromJson(Map<String, dynamic> json) =
      _$_BigCategory.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<SmallCategory>? get smallCategory;
  @override
  @JsonKey(ignore: true)
  _$$_BigCategoryCopyWith<_$_BigCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
