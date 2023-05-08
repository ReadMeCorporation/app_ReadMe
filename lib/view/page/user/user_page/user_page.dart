import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/user_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/dto/user_memebership_info_dto/user_membership_info_dto.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/user/user_page/components/user_page_info_button.dart';
import 'package:readme_app/view/page/user/user_page/components/user_page_main_button.dart';
import 'package:readme_app/view/page/user/user_page/components/user_page_membership_info.dart';
import 'package:readme_app/view/page/user/user_page/components/user_page_sub_button.dart';
import 'package:readme_app/view/page/user/user_page_view_model.dart';

class UserPage extends ConsumerWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserPageModel? model = ref.watch(userPageProvider);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              _logout(ref),
              _header(model?.user?.username ?? ""),
              model == null || model.user == null  ? _loginButton(context) : (model.user!.isMembership ?   UserPageMembershipInfo() : _membershipCard(context)),
              UserPageMainBtton(),
              UserPageSubButton(),
              UserPageInfoBtton(),
            ],
          ),
        ),
      ),
    );
  }


  Widget _logout(WidgetRef ref) {
    return Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
              child: IconButton(
            onPressed: () async {
              await ref.read(userControllerProvider).logout();
            },
            icon: UseIcons.logout,
            iconSize: 40,
            constraints: BoxConstraints(),
          )),
        ));
  }

  Widget _membershipCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: UseButton(
              title: "멤버십 구독하기",
              buttonPressed: () {
              Navigator.pushNamed(context, "/membership");
              },
            ),
          )),
    );
  }

  Widget _loginButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
          height: 170,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colours.app_main, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
            child: UseButton(
              title: "로그인",
              buttonPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, Move.loginPage, (route) => false);
              },
            ),
          )),
    );
  }


  Widget _header(String username) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Image.asset(
            "assets/images/img.png",
            width: 80,
            height: 80,
          ),
        ),
        Text(
          "$username",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: Dimens.font_sp20),
        ),
      ],
    );
  }
}
