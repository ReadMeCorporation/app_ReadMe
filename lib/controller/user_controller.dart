import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/user/user_repository.dart';
import 'package:readme_app/provider/session_provider.dart';

final userControllerProvider = Provider<UserController>((ref) {
  return UserController(ref);
});

class UserController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  UserController(this.ref);

  Future<void> logout() async{
    try{
      await ref.read(sessionProvider).logoutSuccess();
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    }catch(e){
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("로그아웃 실패")));
    }
  }

  Future<void> joinTest() async{
    ResponseDTO? responseDTO = await UserRepository().fetchJoinAndLogin();
    if(responseDTO?.code == 1){
      Navigator.pushNamed(mContext!, Move.navigationBar);
    }else{
      ScaffoldMessenger.of(mContext!).showSnackBar(SnackBar(content: Text("회원가입 실패")));
    }
  }
}