import 'package:flutter_riverpod/flutter_riverpod.dart';

class QuestionListPageModel {
  List<Question> questions = [];

  QuestionListPageModel(this.questions);
}

class Question {
  int id;
  String title;
  String status;
  String time;

  Question(this.id, this.title, this.status, this.time);
}

class QuestionListPageViewModel
    extends StateNotifier<QuestionListPageModel?> {

  QuestionListPageViewModel(super.state);


  var questionModel = QuestionListPageModel([]);

  void notifyInit() async {
    var data = mockQuestionListPageModel;
    questionModel.questions.addAll(data.questions);
    state = questionModel;
  }
}

final QuestionListPageProvider = StateNotifierProvider.autoDispose<
    QuestionListPageViewModel, QuestionListPageModel?>(
  (ref) {
    return QuestionListPageViewModel(null)..notifyInit();
  },
);

QuestionListPageModel mockQuestionListPageModel =
    QuestionListPageModel(List.of([
  Question(1, "구매한 책이 보관함에 없어용", "진행중", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "답변완료", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "진행중", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "진행중", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "답변완료", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "진행중", "2023.04.01"),
  Question(1, "구매한 책이 보관함에 없어용", "진행중", "2023.04.01"),
]));
