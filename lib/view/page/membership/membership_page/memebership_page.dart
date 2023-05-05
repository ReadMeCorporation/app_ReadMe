import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/util/bootpay/bootpay_subscribe.dart';
import 'package:readme_app/view/page/membership/membership_page/components/membership_page_body.dart';

class MembershipPage extends StatelessWidget {
  const MembershipPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BootPaySubscribe()
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
            IconButton(
                padding: EdgeInsets.only(left: 10, right: 5),
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: HsStyleIcons.back),
            IconButton(
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
              onPressed: () {
                Navigator.pushNamed(context, "/main");
              },
              icon: HsStyleIcons.homeFill,)
          ],
        ),
        leadingWidth: 100,
        backgroundColor: Colours.app_sub_white,
      ),
      body: MembershipPageBody(),
    );
  }





}
