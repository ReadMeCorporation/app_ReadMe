import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/question/components/question_page_body.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _questionPageAppbar(context),
      body: QuestionPageBody(),
    );
  }

  AppBar _questionPageAppbar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: Text(
        "문의하기",
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
              Navigator.pushNamed(context, "/navigation");
            },
            icon: HsStyleIcons.homeFill,)
        ],
      ),
      leadingWidth: 100,
      backgroundColor: Colours.app_sub_white,

    );
  }
}
