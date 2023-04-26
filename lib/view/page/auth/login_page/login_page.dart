import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:readme_app/core/constants/jh_style_icons.dart';

import '../../../../core/constants/colours.dart';
import '../../../../core/constants/dimens.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<User?> _handleGoogleSignIn() async {
    try {
      // 구글 로그인
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        // 로그인 취소
        return null;
      }

      // 구글 로그인 정보로 인증
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      final UserCredential userCredential = await _auth.signInWithCredential(credential);

      // 사용자 정보에서 이메일을 가져오기
      // final String email = userCredential.user!.email!;

      // 이메일을 스프링 서버에 전달
      // await http.post('https://your-spring-server.com/google-login', body: {'email': email});

      return userCredential.user;
    } catch (error) {
      print('Login error: $error');
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
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
                                  child: SizedBox(child: JHicons.bookmark50),
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
                                  final User? user = await _handleGoogleSignIn();

                                  if (user != null) {
                                    // 로그인 성공
                                    Navigator.popAndPushNamed(context, "/main");
                                    print("테스트 $user.email");
                                  } else {
                                    // 로그인 실패
                                    print('Login failed.');
                                  }
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
