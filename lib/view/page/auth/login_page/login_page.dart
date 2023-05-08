import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/user_controller.dart';
import 'package:readme_app/core/constants/jh_style_icons.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/dimens.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return SafeArea(
        child: Scaffold(
          body: Column(
            // 전체 column
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  color: Colours.app_main,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 35,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 180,
                          height: 180,
                          child: Image.asset(
                            "assets/images/readme_short.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 40,
                        height: 350,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colours.app_sub_black,
                              spreadRadius: 0.2,
                              blurRadius: 5,
                              offset: Offset(0, 5),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: SizedBox(child: JHicons.bookmark),
                              ),
                            ),
                            Text(
                              "Login",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: Dimens.font_sp50),
                            ),
                            SizedBox(
                              height: 60,
                            ),
                            InkWell(
                              onTap: () async {
                               await ref.read(userControllerProvider).joinTest();
                              },
                              splashColor: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 320,
                                height: 80,
                                child:
                                Image.asset("assets/images/btn_google.png"),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                print("카카오 로그인 클릭 됨");
                              },
                              splashColor: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                // width: 312,
                                width: 312,
                                height: 50,
                                child: Image.asset("assets/images/btn_kakao.png", fit: BoxFit.fill,),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Container(
                        height: 40,
                        child: Image.asset(
                          "assets/images/readme_long.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Expanded(
              //   flex: 1,
              // ),
            ],
          ),
        )
    );
  }
}