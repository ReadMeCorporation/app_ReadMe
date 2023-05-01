import 'package:readme_app/model/qustion/question.dart';

class QuestionRepository {

  List<Question> findList ( )  {
    return List.of(
    {
      Question (id: 1, title: "제목1", content: "내용1", reply: "답글1", time:"2023.04.01", status: 1),
      Question (id: 2, title: "제목2", content: "내용2", reply: "", time:"2023.04.01", status: 0),
      Question (id: 3, title: "제목3", content: "내용3", reply: "", time:"2023.04.01", status: 0),
      Question (id: 4, title: "제목4", content: "내용4", reply: "답글4", time:"2023.04.01", status: 1),
      Question (id: 5, title: "제목5", content: "내용5", reply: "", time:"2023.04.01", status: 0),
      Question (id: 6, title: "제목6", content: "내용6", reply: "답글6", time:"2023.04.01", status: 1),
    }
    );
  }
}