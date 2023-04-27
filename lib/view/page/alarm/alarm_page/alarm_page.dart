import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/view/page/alarm/alarm_page/components/alarm_page_body.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(kToolbarHeight),
        child: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: AppBar(
            elevation: 2,
            leadingWidth: 100,
            backgroundColor: Colours.app_sub_white,
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
                    Navigator.pushNamed(context, "/navigation");
                  },
                  icon: HsStyleIcons.homeFill,),
              ],
            ),
            title: Text(
              "알림내역",
              style: TextStyle(
                  color: Colours.app_sub_black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            centerTitle: true,
          ),
        ),
      ),
      body: AlarmPageBody(),
    );
  }
}
