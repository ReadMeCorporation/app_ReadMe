

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/dto/user_memebership_info_dto/user_membership_info_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/user/user_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'user_page_view_model.freezed.dart';
@unfreezed
class UserPageModel with _$UserPageModel {
  factory UserPageModel({
    UserMembershipInfoDTO? userMembershipInfoDTO,
    TableUser? user
  }) = _UserPageModel;
}

class UserPageViewModel extends StateNotifier<UserPageModel?> {
  UserPageViewModel(super.state);

  void notifyInit() async {
    TableUser? tableUserInfo = await MySqfliteInit.getUser();
    // print(tableUserInfo?.username.toString());
    if(tableUserInfo != null) {
      ResponseDTO responseDTO = await UserRepository().getUserInfo();
      // log(responseDTO.data);
      if (responseDTO.code == 401) {
        Navigator.pushNamedAndRemoveUntil(navigatorKey.currentContext!, Move.loginPage, (route) => false);
      } else if (responseDTO.code == 1) {
          UserMembershipInfoDTO userInfoMembershipDTO = responseDTO.data;
          UserPageModel userPageModel = UserPageModel(userMembershipInfoDTO: userInfoMembershipDTO, user: tableUserInfo);
          state = userPageModel;
      } else {
        DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
      } }
    // } else {
    //   state = UserPageModel(user: null ,userMembershipInfoDTO: null );
    // }
  }
}

final userPageProvider = StateNotifierProvider.autoDispose<
    UserPageViewModel, UserPageModel?>(
      (ref) {
    return UserPageViewModel(null)..notifyInit();
  },
);