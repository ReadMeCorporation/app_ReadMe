import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/model/qustion/question_repository.dart';

class QuestionListDetailModel {
  Question question;
  QuestionListDetailModel(this.question);
}

class QuestionListDetailViewModel
    extends StateNotifier<QuestionListDetailModel?> {
  QuestionListDetailViewModel(super.state);

  void notifyInit(int questionId) async {
    var data = await QuestionRepository().findList()[questionId];
    state = QuestionListDetailModel(data);
  }
}

final questionListDetailProvier = StateNotifierProvider.family.autoDispose<
    QuestionListDetailViewModel, QuestionListDetailModel?, int>((ref, questionId) {
      return QuestionListDetailViewModel(null)..notifyInit(questionId);
});




