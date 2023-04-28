import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/components/use_button.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
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
              // _membershipInfoCard(context),
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
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              // 추가
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseIcons.questionMark,
                SizedBox(
                  width: 5,
                ),
                Text("이용약관")
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              // 추가
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseIcons.infoMark,
                SizedBox(
                  width: 5,
                ),
                Text("앱 정보")
              ],
            ),
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
                border: Border(
                    bottom: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    right:
                        BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                // 추가 question
                Navigator.pushNamed(context, "/question");

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UseIcons.question,
                  SizedBox(
                    width: 5,
                  ),
                  Text("문의하기")
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/questionList");

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UseIcons.questionList,
                  SizedBox(
                    width: 5,
                  ),
                  Text("문의내역")
                ],
              ),
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
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      bottom:
                          BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      right:
                          BorderSide(color: Colours.app_sub_grey, width: 2.0))),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/contentBox");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   HsStyleIcons.bookPayment,
                    SizedBox(
                      height: 5,
                    ),
                    Text("구매도서")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      bottom:
                          BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      right:
                          BorderSide(color: Colours.app_sub_grey, width: 2.0))),
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, "/paymentList");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HsStyleIcons.card,
                    SizedBox(
                      height: 5,
                    ),
                    Text("결제내역")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      bottom:
                          BorderSide(color: Colours.app_sub_grey, width: 2.0))),
              child: InkWell(
                onTap: (){
                  // review
                  Navigator.pushNamed(context, "/review");

                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  HsStyleIcons.review,
                    SizedBox(
                      height: 5,
                    ),
                    Text("리뷰관리")
                  ],
                ),
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
               // PaymentPageBodyMembership 연결 추가
              },
            ),
          )),
    );
  }

  Widget _membershipInfoCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "멤버십 정보",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Dimens.font_sp18),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "D-10",
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "구독권:",
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "스탠다드",
                      style: TextStyle(fontSize: Dimens.font_sp16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              scrollable: false,
                              title: Text("스탠다드 구독권이란?"),
                              content: SizedBox(
                                height: 90,
                                child: Column(
                                  children: [
                                    Text(
                                        "월 9,900원으로 ReadMe의 전체 도서를 열람할 수 있는 정기 구독권입니다."),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                        "최초 결제일 기준으로 매달 자동 결제가 되어 편리하게 사용 가능합니다."),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context, '확인');
                                    },
                                    child: Text("확인"))
                              ],
                            );
                          },
                        );
                      },
                      icon: UseIcons.questionMark,
                      iconSize: 15,
                      padding: EdgeInsets.zero,
                      constraints: BoxConstraints(),
                    )
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("이용기간:", style: TextStyle(fontSize: Dimens.font_sp16)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("2023.04.01-2023.04.30",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("다음 결제일:",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("2023.05.01",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text("카드정보:", style: TextStyle(fontSize: Dimens.font_sp16)),
                    SizedBox(
                      width: 10,
                    ),
                    Text("****-****-****-0000",
                        style: TextStyle(fontSize: Dimens.font_sp16)),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/membershipCancel");
                      },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text("해지"),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colours.app_sub_black,
                      textStyle: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
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
