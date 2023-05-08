import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
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


  Future<ResponseDTO> saveQuestion(String title, String content) async {
    try {
      Response response = await MyHttp.get()
      // todo 경로
          .post("/questions", data: {'title': title, 'content': content});
      if(response.statusCode == 401 || response.statusCode == 403) {
        return ResponseDTO(code: 401, msg: response.statusMessage);
      } else if(response.statusCode == 200) {
        ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
        responseDTO.data = Question.fromJson(responseDTO.data);
        return responseDTO;
      } else {
        return ResponseDTO(code:response.statusCode, msg: response.statusMessage);
      }
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  // Future<ResponseDTO> findList() async {
  //   try {
  //     Response response = await MyHttp.get()
  //     // todo 경로
  //         .post("/questions");
  //     ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
  //     // todo dto
  //     responseDTO.data = Question.fromJson(responseDTO.data);
  //     return responseDTO;
  //   } catch (e) {
  //     return ResponseDTO(code: -1, msg: "실패 : ${e}");
  //   }
  // }
}