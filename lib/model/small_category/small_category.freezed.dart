// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'small_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SmallCategory _$SmallCategoryFromJson(Map<String, dynamic> json) {
  return _SmallCategory.fromJson(json);
}

/// @nodoc
mixin _$SmallCategory {
  int get id => throw _privateConstructorUsedError;
  String get smallCategory => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SmallCategoryCopyWith<SmallCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SmallCategoryCopyWith<$Res> {
  factory $SmallCategoryCopyWith(
          SmallCategory value, $Res Function(SmallCategory) then) =
      _$SmallCategoryCopyWithImpl<$Res, SmallCategory>;
  @useResult
  $Res call({int id, String smallCategory});
}

/// @nodoc
class _$SmallCategoryCopyWithImpl<$Res, $Val extends SmallCategory>
    implements $SmallCategoryCopyWith<$Res> {
  _$SmallCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? smallCategory = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SmallCategoryCopyWith<$Res>
    implements $SmallCategoryCopyWith<$Res> {
  factory _$$_SmallCategoryCopyWith(
          _$_SmallCategory value, $Res Function(_$_SmallCategory) then) =
      __$$_SmallCategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String smallCategory});
}

/// @nodoc
class __$$_SmallCategoryCopyWithImpl<$Res>
    extends _$SmallCategoryCopyWithImpl<$Res, _$_SmallCategory>
    implements _$$_SmallCategoryCopyWith<$Res> {
  __$$_SmallCategoryCopyWithImpl(
      _$_SmallCategory _value, $Res Function(_$_SmallCategory) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? smallCategory = null,
  }) {
    return _then(_$_SmallCategory(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      smallCategory: null == smallCategory
          ? _value.smallCategory
          : smallCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SmallCategory with DiagnosticableTreeMixin implements _SmallCategory {
  const _$_SmallCategory({required this.id, required this.smallCategory});

  factory _$_SmallCategory.fromJson(Map<String, dynamic> json) =>
      _$$_SmallCategoryFromJson(json);

  @override
  final int id;
  @override
  final String smallCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SmallCategory(id: $id, smallCategory: $smallCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SmallCategory'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('smallCategory', smallCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SmallCategory &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.smallCategory, smallCategory) ||
                other.smallCategory == smallCategory));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, smallCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SmallCategoryCopyWith<_$_SmallCategory> get copyWith =>
      __$$_SmallCategoryCopyWithImpl<_$_SmallCategory>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SmallCategoryToJson(
      this,
    );
  }
}

abstract class _SmallCategory implements SmallCategory {
  const factory _SmallCategory(
      {required final int id,
      required final String smallCategory}) = _$_SmallCategory;

  factory _SmallCategory.fromJson(Map<String, dynamic> json) =
      _$_SmallCategory.fromJson;

  @override
  int get id;
  @override
  String get smallCategory;
  @override
  @JsonKey(ignore: true)
  _$$_SmallCategoryCopyWith<_$_SmallCategory> get copyWith =>
      throw _privateConstructorUsedError;
}
