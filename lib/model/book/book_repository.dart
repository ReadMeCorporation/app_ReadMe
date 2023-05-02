import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/dto/mainDTO.dart';
import 'package:readme_app/model/book_banner/banner.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {
  static final BookRepository _instance = BookRepository._single();

  factory BookRepository() {
    return _instance;
  }

  BookRepository._single();

  Future<ResponseDTO> getBanner() async {
    try {
      Response response = await dio.get("http://43.200.163.130:8080/books?page=1&size=3");
      Map<String, dynamic> data = json.decode(response.data);

      ResponseDTO responseDto = ResponseDTO.fromJson(data);
      MainDTO mainDTO = MainDTO.fromJson(data);
      responseDto.data = mainDTO;
      return responseDto;
    } catch (e) {
      return ResponseDTO(code: -1, msg: "실패 : ${e}");
    }
  }

  Future<ResponseDTO> mainList(BookSearchType type) async {
    String endPoint = "/${type.name}";
    if(type.name == "total" || type.name == "latest") {
      endPoint = "";
    }
    try {
      // 경로 수정 = $type
      Response response =
          await dio.get("http://43.200.163.130:8080/books$endPoint?page=1&size=1");


      print("디버그 0: " + response.data.toString());
      // TODO 문제있슴
      ResponseDTO responseDto = ResponseDTO.fromJson(response.data);
      print("디버그 1: " + responseDto.data.toString());

      MainDTO mainDTO = MainDTO.fromJson(responseDto.data);
      print("디버그 2: " + mainDTO.content.toString());
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
