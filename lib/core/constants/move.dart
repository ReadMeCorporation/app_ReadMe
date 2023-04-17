
import 'package:flutter/material.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';

import '../../view/page/auth/login_page/login_page.dart';


class Move {
  static String categoryPage = "/category";
  static String searchPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
  static String loginPage = "/login";
}

Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    // Move.categoryPage: (context) => CategoryPage(),
    // Move.searchPage: (context) => SearchPage(),
    Move.mainPage: (context) => MainPage(),
    Move.loginPage: (context) => LoginPage(),
    // Move.storagePage: (context) => StoragePage(),
    // Move.userPage: (context) => UserPage(),
  };
}