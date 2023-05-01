import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/model/qustion/question_repository.dart';

class QuestionListPageModel {
  List<Question> questions = [];

  QuestionListPageModel(this.questions);
}

class QuestionListPageViewModel
    extends StateNotifier<QuestionListPageModel?> {

  QuestionListPageViewModel(super.state);


  var questionModel = QuestionListPageModel([]);

  void notifyInit() async {
    var data = QuestionRepository().findList();
    questionModel.questions.addAll(data);
    state = questionModel;
  }

}

final questionListPageProvider = StateNotifierProvider.autoDispose<
    QuestionListPageViewModel, QuestionListPageModel?>(
      (ref) {
    return QuestionListPageViewModel(null)..notifyInit();
  },
);

