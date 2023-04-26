import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/model/user/user.dart';

final sessionProvider = Provider<SessionUser>((ref) {
  return SessionUser();
});

class SessionUser {
  User? user;
  String? jwt;
  bool? isLogin;

  void loginSuccess(User user, String jwt){
    this.user = user;
    this.jwt = jwt;
    this.isLogin = true;
  }

  Future<void> logoutSuccess() async {
    this.user = null;
    this.jwt = null;
    this.isLogin = false;
    await secureStorage.delete(key: "jwt");
    Logger().d("세션 종료 및 디바이스 JWT 삭제");
  }
}