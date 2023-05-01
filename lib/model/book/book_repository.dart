import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/dto/mainDTO.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {
  static final BookRepository _instance = BookRepository._single();

  factory BookRepository() {
    return _instance;
  }

  BookRepository._single();

  Future<ResponseDTO> mainList(BookSearchType type) async {
    String endPoint = "/" + type.name;
    if(type == "total" || type == "latest") {
      endPoint = "";
    }
    try {
      // 경로 수정 = $type
      Response response =
          await dio.get("http://43.200.163.130:8080/books" + endPoint + "?page=1&size=10");
      ResponseDTO responseDto = ResponseDTO.fromJson(response.data);
      MainDTO mainDTO = MainDTO.fromJson(responseDto.data);
      responseDto.data = mainDTO;

      return responseDto;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> searchMainListPage(int page, BookSearchType type) async {
    try {
      // 경로 수정 $type & $page
      Response response = await dio.get("http://43.200.163.130/books/${type}");

      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);
      MainDTO mainDTO = MainDTO.fromJson(responseDTO.data);
      responseDTO.data = mainDTO;
      return responseDTO;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }
}
