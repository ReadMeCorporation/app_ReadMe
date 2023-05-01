import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final dio = Dio(BaseOptions(
  // 주소 변경
  baseUrl: "http://43.200.163.130:8080",
  contentType: "application/json; charset=utf-8",
));

//FlutterSecureStorage - flutter에서 각 플랫폼(안드로이드, ios)의 내부저장소를 사용할 수 있게 해주는 라이브러리
const secureStorage = FlutterSecureStorage();
