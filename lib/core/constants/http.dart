import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage.dart';
import 'package:readme_app/core/constants/secure_storage_enum.dart';
import 'package:readme_app/main.dart';

class MyHttp {

  static const String _baseUrl = "http://52.78.109.74:8080";
  static const String _contentType = "application/json; charset=utf-8";

  static Dio get() {
    return Dio(BaseOptions(
      // 주소 변경
      baseUrl: _baseUrl ,
      contentType: _contentType,
    ));
  }

  static Future<Dio> getSecurity() async {
    String jwtToken = await SecureStorage.get(SecureStorageEnum.jwtToken) ?? "";
     return Dio(BaseOptions(
       headers: {
         "Authorization": jwtToken
       },
        // 주소 변경
        baseUrl: _baseUrl,
        contentType: _contentType,
      ));
  }

  static Future<Dio> getCommon() async {
    String? jwtToken = await SecureStorage.get(SecureStorageEnum.jwtToken);
    return jwtToken != null ? getSecurity() : Future(() => get());
  }

  static Future<bool> refresh (Function function) async {

    // AccessToken [만료 기간이 짧다] -> header -> 403
    // RefreshToken [만료 기간이 굉장히 길다] -> server -> access Token 재발급 -> 저장 -> 다시 통신해서 로직 발생

    // 일시적으로 사용하는 토큰
    // 자동 로그인에 사용하는 토큰


    return true;
  }


}

const secureStorage = FlutterSecureStorage();