import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/core/constants/http.dart';
import 'package:readme_app/model/user/app_user.dart';

final sessionProvider = Provider<SessionUser>((ref) {
  return SessionUser();
});

class SessionUser {
  AppUser? appUser;
  String? jwt;
  bool? isLogin;

  void loginSuccess(AppUser appUser, String jwt){
    this.appUser = appUser;
    this.jwt = jwt;
    this.isLogin = true;
  }

  Future<void> logoutSuccess() async {
    this.appUser = null;
    this.jwt = null;
    this.isLogin = false;
    await secureStorage.delete(key: "jwt");
    Logger().d("세션 종료 및 디바이스 JWT 삭제");
  }
}