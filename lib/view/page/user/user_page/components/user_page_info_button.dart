import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/use_icons.dart';

class UserPageInfoBtton extends ConsumerWidget {
  const UserPageInfoBtton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              // 추가
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseIcons.questionMark,
                SizedBox(
                  width: 5,
                ),
                Text("이용약관")
              ],
            ),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: InkWell(
            onTap: () {
              // 추가
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UseIcons.infoMark,
                SizedBox(
                  width: 5,
                ),
                Text("앱 정보")
              ],
            ),
          ),
        )
      ],
    );;
  }
}
