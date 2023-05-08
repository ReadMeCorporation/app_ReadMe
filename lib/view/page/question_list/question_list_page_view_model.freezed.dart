// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_list_page_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionListPageModel {
  List<Question> get questions => throw _privateConstructorUsedError;
  set questions(List<Question> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionListPageModelCopyWith<QuestionListPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionListPageModelCopyWith<$Res> {
  factory $QuestionListPageModelCopyWith(QuestionListPageModel value,
          $Res Function(QuestionListPageModel) then) =
      _$QuestionListPageModelCopyWithImpl<$Res, QuestionListPageModel>;
  @useResult
  $Res call({List<Question> questions});
}

/// @nodoc
class _$QuestionListPageModelCopyWithImpl<$Res,
        $Val extends QuestionListPageModel>
    implements $QuestionListPageModelCopyWith<$Res> {
  _$QuestionListPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_value.copyWith(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuestionListPageModelCopyWith<$Res>
    implements $QuestionListPageModelCopyWith<$Res> {
  factory _$$_QuestionListPageModelCopyWith(_$_QuestionListPageModel value,
          $Res Function(_$_QuestionListPageModel) then) =
      __$$_QuestionListPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Question> questions});
}

/// @nodoc
class __$$_QuestionListPageModelCopyWithImpl<$Res>
    extends _$QuestionListPageModelCopyWithImpl<$Res, _$_QuestionListPageModel>
    implements _$$_QuestionListPageModelCopyWith<$Res> {
  __$$_QuestionListPageModelCopyWithImpl(_$_QuestionListPageModel _value,
      $Res Function(_$_QuestionListPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = null,
  }) {
    return _then(_$_QuestionListPageModel(
      questions: null == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
    ));
  }
}

/// @nodoc

class _$_QuestionListPageModel
    with DiagnosticableTreeMixin
    implements _QuestionListPageModel {
  _$_QuestionListPageModel({required this.questions});

  @override
  List<Question> questions;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QuestionListPageModel(questions: $questions)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QuestionListPageModel'))
      ..add(DiagnosticsProperty('questions', questions));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionListPageModelCopyWith<_$_QuestionListPageModel> get copyWith =>
      __$$_QuestionListPageModelCopyWithImpl<_$_QuestionListPageModel>(
          this, _$identity);
}

abstract class _QuestionListPageModel implements QuestionListPageModel {
  factory _QuestionListPageModel({required List<Question> questions}) =
      _$_QuestionListPageModel;

  @override
  List<Question> get questions;
  set questions(List<Question> value);
  @override
  @JsonKey(ignore: true)
  _$$_QuestionListPageModelCopyWith<_$_QuestionListPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
