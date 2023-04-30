import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/view/page/question_list/components/question_list_page_body.dart';

class QuestionListPage extends ConsumerWidget {
  const QuestionListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: _questionListAppbar(context),
      body: QuestionListPageBody(),
    );
  }


  AppBar _questionListAppbar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: Text(
        "문의내역",
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