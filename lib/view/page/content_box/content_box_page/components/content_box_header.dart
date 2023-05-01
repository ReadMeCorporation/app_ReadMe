import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

class ContentBoxHeader extends StatelessWidget implements PreferredSizeWidget{
  const ContentBoxHeader({required this.tabController, Key? key}) : super(key: key);
  final TabController tabController;

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colours.app_sub_white,
      title: Text(
        "보관함",
        style: TextStyle(
          color: Colours.app_sub_black,
          fontWeight: FontWeight.w700,
          fontSize: 22,
        ),
      ),
      centerTitle: true,
      leading: Row(children: [
        IconButton(
            padding: EdgeInsets.only(left: 10, right: 5),
            constraints: BoxConstraints(),
            onPressed: () {
              Navigator.pop(context);
            },
            icon: HsStyleIcons.back),
      ]),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(48.0),
        child: Column(
          children: <Widget>[
            const Divider(
              height: 2,
              color: Colours.app_sub_black,
            ),
            TabBar(
              controller: tabController,
              labelColor: Colours.app_sub_black,
              indicatorColor: Colours.app_main,
              labelStyle: TextStyle(fontWeight: FontWeight.w700),
              tabs: <Widget>[
                Tab(
                  text: "최근본",
                ),
                Tab(
                  text: "스크랩",
                ),
                Tab(
                  text: "구매",
                ),
                Tab(
                  text: "북마크",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
