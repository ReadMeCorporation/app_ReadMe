
import 'package:flutter/material.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/membership/membership_page/memebership_page.dart';
import 'package:readme_app/view/page/search/search_page/search_page.dart';
import 'package:readme_app/view/page/storage/storage_page/storage_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';
import 'package:readme_app/view/page/payment/payment_page/payment_page.dart';

import '../../view/page/book_viwer/book_viwer_page/book_viwer_page.dart';


class Move {
  static String categoryPage = "/category";
  static String searchPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
  static String navigationBar = "/navigation";
  static String cartPage = "/cart";
  static String paymentPage = "/payment";
  static String alarmPage = "/alarm";
  static String membershipPage = "/membership";
  static String bookViwerPage = "/viwer";
}





Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.categoryPage: (context) => CategoryPage(),
    Move.searchPage: (context) => SearchPage(),
    Move.mainPage: (context) => MainPage(),
    Move.storagePage: (context) => StoragePage(),
    Move.userPage: (context) => UserPage(),
    Move.navigationBar: (context) => HomeNavigationBar(),
   // Move.alarmPage: (context) => AlarmPage(),
    Move.cartPage : (context) => CartPage(),
    Move.membershipPage : (context) => MembershipPage(),
    Move.paymentPage : (context) => PaymentPage(),
    Move.bookViwerPage : (context) => BookViwerPage(),
  };
}