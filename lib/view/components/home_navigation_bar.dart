
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/search/search_page/search_page.dart';
import 'package:readme_app/view/page/storage/storage_page/storage_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';


class HomeNavigationBar extends StatefulWidget {
  const HomeNavigationBar({Key? key}) : super(key: key);

  @override
  State<HomeNavigationBar> createState() => _HomeNavigationBarState();
}

class _HomeNavigationBarState extends State<HomeNavigationBar> {

  int _selectedIndex = 2;

  List<Widget> pageList = [
    CategoryPage(),
    SearchPage(),
    MainPage(),
    StoragePage(),
    UserPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageList.elementAt(_selectedIndex),
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

