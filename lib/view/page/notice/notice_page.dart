import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/view/page/notice/components/notice_page_body.dart';

class NoticePage extends ConsumerWidget {
  const NoticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar : AppBar(
          elevation: 1,
          title: Text(
            "공지",
            style: TextStyle(
                color: Colours.app_sub_black,
                fontWeight: FontWeight.w700,
                fontSize: Dimens.font_sp18),
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
                  Navigator.pushNamed(context, Move.navigationBar);
                },
                icon: HsStyleIcons.homeFill,)
            ],
          ),
          leadingWidth: 100,
          backgroundColor: Colours.app_sub_white,
        ),
      body: NoticePageBody());
  }
}
