import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/components/custom_dialog.dart';
import 'package:readme_app/view/page/user/user_page_view_model.dart';

class UserPageMainBtton extends ConsumerWidget {
  const UserPageMainBtton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    UserPageModel? userModel = ref.watch(userPageProvider);

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      right:
                      BorderSide(color: Colours.app_sub_grey, width: 2.0))),
              child: InkWell(
                onTap: () {
                  if(userModel?.user != null) {
                    Navigator.pushNamed(context, Move.contentBoxPage, arguments: 2);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return   CustomDialog(title: "로그인 후 이용 가능",
                          content: "로그인 하시겠습니까?",
                          callback: () => Navigator.pushNamed(context, Move.loginPage));
                      },
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HsStyleIcons.bookPayment,
                    SizedBox(
                      height: 5,
                    ),
                    Text("구매도서")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
                      right:
                      BorderSide(color: Colours.app_sub_grey, width: 2.0))),
              child: InkWell(
                onTap: () {
                  if(userModel?.user != null) {
                    Navigator.pushNamed(context,Move.paymentListPage);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return   CustomDialog(title: "로그인 후 이용 가능",
                            content: "로그인 하시겠습니까?",
                            callback: () => Navigator.pushNamed(context, Move.loginPage));
                      },
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HsStyleIcons.card,
                    SizedBox(
                      height: 5,
                    ),
                    Text("결제내역")
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Colours.app_sub_grey, width: 2.0),
               )),
              child: InkWell(
                onTap: () {
                  if(userModel?.user != null) {
                    Navigator.pushNamed(context, Move.reviewPage);
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return   CustomDialog(title: "로그인 후 이용 가능",
                            content: "로그인 하시겠습니까?",
                            callback: () => Navigator.pushNamed(context, Move.loginPage));
                      },
                    );
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HsStyleIcons.review,
                    SizedBox(
                      height: 5,
                    ),
                    Text("리뷰관리")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
