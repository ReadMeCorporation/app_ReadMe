import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/model/qustion/question_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'question_list_page_view_model.freezed.dart';

@unfreezed
class QuestionListPageModel with _$QuestionListPageModel {
  factory QuestionListPageModel({
  required List<Question> questions
  }) = _QuestionListPageModel;
}

class QuestionListPageViewModel
    extends StateNotifier<QuestionListPageModel?> {

  QuestionListPageViewModel(super.state);


  QuestionListPageModel questionModel = QuestionListPageModel(questions: []);

  void notifyInit() async {
    List<Question> data = QuestionRepository().findList();
    // ResponseDTO responseDTO =  QuestionRepository().findList();
    questionModel.questions.addAll(data);
    state = questionModel;
  }

  void update(Question question) async {
    List<Question> newQuestions = [...state!.questions];
    newQuestions.add(question);
    state = state!.copyWith(questions: newQuestions);
    // state!.copyWith(questions: )
  }
}

final questionListPageProvider = StateNotifierProvider.autoDispose<
    QuestionListPageViewModel, QuestionListPageModel?>(
      (ref) {
    return QuestionListPageViewModel(null)..notifyInit();
  },
);

