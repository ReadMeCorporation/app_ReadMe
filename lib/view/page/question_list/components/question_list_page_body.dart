import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/view/page/question_list/components/question_list_detail.dart';

class QuestionListPageBody extends ConsumerWidget {
  const QuestionListPageBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context, WidgetRef ref) {

    QuestionListPageModel? model = ref.watch(QuestionListPageProvider);

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
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionListDetail()),);
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
                          Text(question[index].time, style: TextStyle(
                              fontWeight: FontWeight.w700
                          )),
                          Text(question[index].status, style: TextStyle(
                              color: question[index].status == '진행중' ? Colours.app_sub_blue : Colours.app_sub_darkgrey
                          ),),
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