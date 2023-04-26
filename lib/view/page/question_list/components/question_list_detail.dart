import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class QuestionListDetail extends StatelessWidget {
  const QuestionListDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _questionListDetailAppbar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        "소장 구매한 책이 보관함에 없어요",
                        style: TextStyle(
                            fontSize: Dimens.font_sp18,
                            fontWeight: FontWeight.w700,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    Text("2023.02.02"),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
                child: Text(
                  "소장 구매한 책이 보관함에 없어요 흑흑",
                  style: TextStyle(fontSize: Dimens.font_sp16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              _answerTile(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _answerTile() {
    return Column(
      children: [
        Divider(
          thickness: 2,
        ),
        Container(
          padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 30),
          width: double.infinity,
          color: Colours.app_sub_grey,
          child: Text("안녕하세요. ReadMe입니다. 문의 주신 내역에 대해서 어쩌고 저쩌고 블라블라 감사합니다. "),
        ),
      ],
    );
  }

  AppBar _questionListDetailAppbar(BuildContext context) {
    return AppBar(
      elevation: 2,
      title: Text(
        "문의 상세",
        style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22),
      ),
      centerTitle: true,
      actions: [
        IconButton(
            padding: EdgeInsets.only(left: 10, right: 5),
            constraints: BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: HsStyleIcons.delete),
      ],
      backgroundColor: Colours.app_sub_white,
      actionsIconTheme: IconThemeData(color: Colours.app_sub_black),
    );
  }
}