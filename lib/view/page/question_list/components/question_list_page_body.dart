import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/view/page/question_list/components/question_list_detail.dart';
import 'package:readme_app/view/page/question_list/question_list_page_view_model.dart';

class QuestionListPageBody extends ConsumerWidget {
  const QuestionListPageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    QuestionListPageModel? model = ref.watch(questionListPageProvider);

    List<Question> question = [];
    if (model != null) {
      question = model.questions;
    }

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: List.generate(question.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => QuestionListDetail(
                              id: index,
                            )),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colours.app_sub_darkgrey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(question[index].time,
                              style: TextStyle(fontWeight: FontWeight.w700)),
                          Text(
                            question[index].status == 0 ? "진행중" : "답변완료",
                            style: TextStyle(color: question[index].status == 0
                                    ? Colours.app_sub_blue
                                    : Colours.app_sub_darkgrey),
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Text(question[index].title),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}