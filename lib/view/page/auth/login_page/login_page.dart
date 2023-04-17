import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/use_icons.dart';

import '../../../../core/constants/colours.dart';
import '../../../../core/constants/dimens.dart';
import 'components/jh_icons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
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
                              child: SizedBox(
                                  child:JHicons.bookmark
                              ),
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
                            onTap: () {
                              print("구글 로그인 클릭 됨");
                            },
                            splashColor: Colors.red,
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 320,
                              child:
                                  Image.asset("assets/images/btn_google.png"),
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colours.app_main,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    "assets/images/readme_long.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
