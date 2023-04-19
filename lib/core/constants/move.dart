
import 'package:flutter/material.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/search/search_page/search_page.dart';
import 'package:readme_app/view/page/storage/storage_page/storage_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';


class Move {
  static String categoryPage = "/category";
  static String searchPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
  static String navigationBar = "/navigation";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.categoryPage: (context) => CategoryPage(),
    Move.searchPage: (context) => SearchPage(),
    Move.mainPage: (context) => MainPage(),
    Move.storagePage: (context) => StoragePage(),
    Move.userPage: (context) => UserPage(),
    Move.navigationBar: (context) => HomeNavigationBar(),
  };
}