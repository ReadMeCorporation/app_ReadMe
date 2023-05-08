import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/qustion/question_repository.dart';
import 'package:readme_app/view/page/question_list/question_list_page_view_model.dart';

final questionControllerProvider = Provider<QuestionController>((ref) {
  return QuestionController(ref);
});

class QuestionController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  QuestionController(this.ref);


 Future<void> saveQuestion(String title,  String content) async {
   // SessionUser sessionUser = ref.read(sessionProvider);
   ResponseDTO responseDTO = await QuestionRepository().saveQuestion(title, content);
   if(responseDTO.code == 401) {
     Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
   } else {
     ref.read(questionListPageProvider.notifier).update(responseDTO.data);
     Navigator.pushNamed(mContext!, "/questionList");
   }

 }


}