import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_body.dart';

class MembershipPage extends StatelessWidget {
  const MembershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
              backgroundColor: Colours.app_sub_black,
              shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              onPressed: () {
                // 나중에 추가!!!!
              },
              child: Text("결제하기", style: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),)
          ),
        ),
      ),
      backgroundColor: Colours.app_sub_white,
      appBar: AppBar(
        title: Text(
          "멤버십 구독",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22),

        ),
        centerTitle: true,
        leading: Row(
          children: [
            HsStyleIcons.back,
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/main");
                },
                icon: HsStyleIcons.homeFill)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: MembershipPageBody(),
    );
  }





}
