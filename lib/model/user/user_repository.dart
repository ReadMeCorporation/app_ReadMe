

import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/dto/response_dto.dart';


class UserRepository {
  static final UserRepository _instance= UserRepository._single();
  factory UserRepository() {
    return _instance;
  }
  UserRepository._single();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();


  Future<ResponseDTO?> fetchJoinAndLogin() async {
    try{

      /// 1. 구글 로그인
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        // // 로그인 취소
        return null;
      }

      /// 2. 구글 로그인 정보로 인증
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      /// 3. 현재 사용자 가져오기
      final currentUser = _auth.currentUser;
      print("currentUser 토큰에서 email 출력 : ${currentUser!.email}");

      /// 4. 사용자 id 토큰 가져오기
      final idToken = await currentUser?.getIdToken();
      Logger().d("사용자 idToken = $idToken");


      /// 5. id 토큰을 스프링 서버로 전달
      Response response = await dio.post("/users/login", data: {'idToken': idToken}); // 스프링에서 만든 join 로직에 요청
      print("토큰 스프링 서버로 전달 됨");
      print("바디값 : ${response.data == ''}");
      Logger().d("id 토큰을 스프링 서버로 전달");

      /// 6. 스프링 서버로 부터 받은 토큰을 앱 서버로 전달
      final jwtToken = response.headers['Authorization'];
      // final body = response.data;

      Logger().d("jwtToken 토큰 : $jwtToken");

      /// 7. 앱에서 사용자 토큰 저장
      if (jwtToken != null && jwtToken is String) {
        await secureStorage.write(key: "jwtToken", value: jwtToken as String);
      }
      if (secureStorage != null) {
        var secureStorageJWT = await secureStorage.read(key: "jwtToken");
      // Logger().d("앱에서 사용자 토큰 저장 =  ${await secureStorage.read(key: "jwtToken")}");
      Logger().d("앱에서 사용자 토큰 저장 =  $secureStorageJWT");
      }



      ResponseDTO responseDTO = ResponseDTO.fromJson(response.data);

      return responseDTO;
    }catch(e){
      return ResponseDTO(code: -1, msg: "구글 로그인 실패");
    }
  }

}