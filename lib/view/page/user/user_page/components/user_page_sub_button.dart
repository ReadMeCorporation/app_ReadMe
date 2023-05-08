import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/page/user/user_page_view_model.dart';

class UserPageSubButton extends ConsumerWidget {
  const UserPageSubButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserPageModel? model = ref.watch(userPageProvider);
    return Row(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                    right:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                if(model != null) {
                  Navigator.pushNamed(context, "/question");
                }

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UseIcons.question,
                  SizedBox(
                    width: 5,
                  ),
                  Text("문의하기")
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
                border: Border(
                    bottom:
                    BorderSide(color: Colours.app_sub_grey, width: 2.0))),
            child: InkWell(
              onTap: () {
                if(model != null) {
                  Navigator.pushNamed(context, "/questionList");
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UseIcons.questionList,
                  SizedBox(
                    width: 5,
                  ),
                  Text("문의내역")
                ],
              ),
            ),
          ),
        )
      ],
    );;
  }
}
