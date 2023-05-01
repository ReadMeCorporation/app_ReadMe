import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/view/page/question_list/components/question_answer.dart';
import 'package:readme_app/view/page/question_list/components/question_list_detail_view_model.dart';

class QuestionListDetail extends ConsumerWidget {
  int id;
  QuestionListDetail({required this.id, Key? key}) : super(key: key);

  // detail 연결된 provider

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    QuestionListDetailModel? model = ref.watch(questionListDetailProvier(id));
    Question useQuestion;

    if(model == null) {
      return CircularProgressIndicator();
    } else {
      useQuestion = model.question;
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
                          useQuestion.title,
                          style: TextStyle(
                              fontSize: Dimens.font_sp18,
                              fontWeight: FontWeight.w700,
                              overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Text(useQuestion.time),
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
                    useQuestion.content,
                    style: TextStyle(fontSize: Dimens.font_sp16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                useQuestion.status == 1 ?
                    QuestionAnswer(reply: useQuestion.reply!) :
                    Container()
              ],
            ),
          ),
        ),
      );
    }
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