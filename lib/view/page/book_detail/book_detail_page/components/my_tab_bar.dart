import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  int _selectedButtonIndex = 0; // 수정된 부분

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
              fontSize: Dimens.font_sp20,
            ),
          ),
          onPressed: () {
            setState(() {
              _selectedButtonIndex = 0;
            });
          },
          child: Text(
            "도서 정보",
            style: TextStyle(
              color: _selectedButtonIndex == 0
                  ? Colours.app_sub_black
                  : Colours.app_sub_black,
              fontSize: Dimens.font_sp20,
              fontWeight:
              _selectedButtonIndex == 0 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: Dimens.font_sp20),
          ),
          onPressed: () {
            setState(() {
              _selectedButtonIndex = 1;
            });
          },
          child: Text(
            "리뷰 관리",
            style: TextStyle(
              color: _selectedButtonIndex == 1
                  ? Colours.app_sub_black
                  : Colours.app_sub_black,
              fontSize: Dimens.font_sp20,
              fontWeight:
              _selectedButtonIndex == 1 ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ],
    );
  }
}

