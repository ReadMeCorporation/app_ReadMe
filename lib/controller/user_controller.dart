import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/user/user.dart';
import 'package:readme_app/model/user/user_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';

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
        await UserRepository().logOut();
        Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
        ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("정상적으로 로그아웃 되었습니다.")));
    }catch(e){
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("로그아웃 실패")));
    }
  }

  Future<void> joinTest() async{
    var userRepository = UserRepository();
    ResponseDTO? responseDTO = await userRepository.fetchJoinAndLogin();
    if(responseDTO?.code == 1){
      var responseUserDTO = await userRepository.getUser();
      if (responseUserDTO.code == 1) {
        var user = User.fromJson(responseUserDTO.data);
        await MySqfliteInit.insertUser(user);
        Navigator.pushNamed(mContext!, Move.navigationBar);
      } else {
        ScaffoldMessenger.of(mContext!).showSnackBar(
            SnackBar(content: Text(responseUserDTO.msg ?? "회원 정보 조회 실패"))
        );
      }
    }else{
      ScaffoldMessenger.of(mContext!).showSnackBar(const SnackBar(content: Text("회원가입 실패")));
    }
  }


}