import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';

class QuestionAnswer extends StatelessWidget {
  String reply;

   QuestionAnswer({required this.reply, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 2,
        ),
        Container(
          padding: EdgeInsets.only(top: 15, right: 15, left: 15, bottom: 30),
          width: double.infinity,
          color: Colours.app_sub_grey,
          child: Text(reply),
        ),
      ],
    );;
  }
}
