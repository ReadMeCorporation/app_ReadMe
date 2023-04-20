import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

import '../../../../core/constants/jh_style_button.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../../../../core/constants/move.dart';
import '../../../components/use_button.dart';

class BookDrawer extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey; // Add the scaffoldKey here
  const BookDrawer({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              trailing: Container(
                width: 250,
                child: Text(
                  "배경 설정",
                  style: TextStyle(
                      fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                ),
              ),
              contentPadding: EdgeInsets.only(right: 25),
            ),
            ListTile(
              trailing: Container(
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {
                            print("하트 눌러짐");
                          },
                          icon: JHicons.colorCircleBlack),
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {
                            print("하트 눌러짐");
                          },
                          icon: JHicons.colorCircleWhite),
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {
                            print("하트 눌러짐");
                          },
                          icon: JHicons.colorCircleMain),
                    ),
                    Container(
                      child: IconButton(
                          onPressed: () {
                            print("하트 눌러짐");
                          },
                          icon: JHicons.colorCircleGrey),
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 30),
            ),
            // Divider(
            //   color: Colours.app_sub_black,
            // ),
            ListTile(
              trailing: Container(
                width: 250,
                child: Text(
                  "글자 크기",
                  style: TextStyle(
                      fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                ),
              ),
              contentPadding: EdgeInsets.only(right: 25),
            ),
            ListTile(
              trailing: Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 100,
                      child: jhUseButton(
                        title: "마이너스",
                        buttonPressed: () {
                          Navigator.pushNamed(context, Move.cartPage);
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 100,
                      child: jhUseButton(
                        title: "플러스",
                        buttonPressed: () {
                          print("장바구니 버튼 눌러짐");
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 30),
            ),
            SizedBox(
              width: 5,
            ),
            // Divider(
            //   color: Colours.app_sub_black,
            // ),
            ListTile(
              trailing: Container(
                width: 250,
                child: Text(
                  "폰트 설정",
                  style: TextStyle(
                      fontSize: Dimens.font_sp20, fontWeight: FontWeight.w700),
                ),
              ),
              contentPadding: EdgeInsets.only(right: 25),
            ),
            ListTile(
              trailing: Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 80,
                      child: TextButton(
                        child: Text("나눔고딕", style: TextStyle(color: Colours.app_sub_black, fontWeight: FontWeight.w500)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 80,
                      child: TextButton(
                        child: Text("나눔명조", style: TextStyle(color: Colours.app_sub_black, fontWeight: FontWeight.w500)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      width: 80,
                      child: TextButton(
                        child: Text("마루부리",style: TextStyle(color: Colours.app_sub_black, fontWeight: FontWeight.w500),),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 30),
            ),
          ],
        ),
      ),
    );
  }
}
