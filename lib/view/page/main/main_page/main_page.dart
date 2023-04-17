

import 'package:flutter/material.dart';

import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/use_icons.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Center(child: Text("카테고리페이지")),
          Center(child: Text("검색페이지")),
          Center(child: Text("메인페이지")),
          Center(child: Text("보관함페이지")),
          Center(child: Text("마이페이지")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        iconSize: Dimens.font_sp40,
        backgroundColor: Colours.app_sub_white,
        selectedItemColor: Colours.app_main,
        unselectedItemColor: Colours.app_sub_black,
        onTap:(index){
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: UseIcons.category,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.search,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.home,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.box,
            label: "",
          ),
          BottomNavigationBarItem(
            icon: UseIcons.userinfo,
            label: "",
          ),
        ],
      ),
    );
  }
}
