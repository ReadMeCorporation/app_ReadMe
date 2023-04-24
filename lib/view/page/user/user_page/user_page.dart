import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/components/use_button.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _logout(),
              _header(),
              _membershipCard(),
              _mainButton(),
              _subButton(),
              _bottomInfo(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomInfo() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: UseIcons.questionMark, iconSize: 25,),
              Text("이용약관")
            ],
          ),
        ),
        Divider(thickness: 2,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: (){}, icon: UseIcons.infoMark, iconSize: 25,),
              Text("앱 정보")
            ],
          ),
        )
      ],
    );
  }

  Widget _subButton() {
    return Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            color: Colours.app_sub_grey,
                            width: 2.0
                        ), right: BorderSide(
                            color: Colours.app_sub_grey,
                            width: 2.0
                        ))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: UseIcons.question,
                          iconSize: 30,
                        ),
                        Text("문의하기")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            color: Colours.app_sub_grey,
                            width: 2.0
                        ))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: UseIcons.questionList,
                          iconSize: 30,
                        ),
                        Text("문의내역")
                      ],
                    ),
                  ),
                )
              ],
            );
  }

  Widget _mainButton() {
    return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(
                        color: Colours.app_sub_grey,
                        width: 2.0
                      ), bottom: BorderSide(
                          color: Colours.app_sub_grey,
                          width: 2.0
                      ), right: BorderSide(
                          color: Colours.app_sub_grey,
                          width: 2.0
                      ))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: (){},
                          icon: UseIcons.bookPayment,
                          iconSize: 35,
                        ),
                        Text("구매도서")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(
                        color: Colours.app_sub_grey,
                        width: 2.0
                      ), bottom: BorderSide(
                          color: Colours.app_sub_grey,
                          width: 2.0
                      ), right: BorderSide(
                          color: Colours.app_sub_grey,
                          width: 2.0
                      ))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: UseIcons.card, iconSize: 35, ),
                        Text("결제내역")
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      border: Border(top: BorderSide(
                        color: Colours.app_sub_grey,
                        width: 2.0
                      ), bottom: BorderSide(
                          color: Colours.app_sub_grey,
                          width: 2.0
                      ))
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: (){}, icon: UseIcons.review, iconSize: 35,),
                        Text("리뷰관리")
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  Widget _logout() {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
              child: IconButton(
            onPressed: () {},
            icon: UseIcons.logout,
            iconSize: 40,
            constraints: BoxConstraints(),
          )),
        ));
  }

  Widget _membershipCard() {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: UseButton(
              title: "멤버십 구독하기",
              buttonPressed: () {
                // 추가하기
              },
            ),
          )),
    );
  }

  Widget _header() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            "assets/images/img.png",
            width: 80,
            height: 80,
          ),
        ),
        Text(
          "ssar@nate.com",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),
        ),
      ],
    );
  }
}
