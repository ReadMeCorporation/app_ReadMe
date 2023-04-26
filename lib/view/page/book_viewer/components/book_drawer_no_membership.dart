import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/dimens.dart';

import 'jh_style_button.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../../../../core/constants/move.dart';
import '../../../components/use_button.dart';

class BookDrawerNoMembership extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const BookDrawerNoMembership({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 40.0),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 250,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/book2.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Text(
                  '',
                ),
              ),
            ),
            ListTile(
              trailing: Container(
                width: 250,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      child: IconButton(
                          onPressed: () {
                            print("하트 눌러짐");
                          },
                          icon: JHicons.heartFill),
                    ),
                    SizedBox(
                      height: 50,
                      width: 70,
                    ),
                    Expanded(
                      child: Container(
                          width: 120,
                          child: Text("소장가 115,000원" ,style: TextStyle(fontSize: Dimens.font_sp16,fontWeight: FontWeight.w500),)
                      ),
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 20),
            ),
            ListTile(
              trailing: Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 120,
                      child: jhUseButton(title: "장바구니", buttonPressed: () {
                        Navigator.pushNamed(context, Move.cartPage);
                      },),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 120,
                      child: jhUseButton(title: "소장하기" , buttonPressed: () {
                        print("장바구니 버튼 눌러짐");
                      },),
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 20),
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              trailing: Container(
                height: 50,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 250,
                      child: UseButton(title: "멤버십 구독", buttonPressed: () {
                        Navigator.pushNamed(context, Move.cartPage);
                      },),
                    ),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.only(right: 20),
            )
          ],
        ),
      ),
    );
  }
}