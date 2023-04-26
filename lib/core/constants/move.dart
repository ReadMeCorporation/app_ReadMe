import 'package:flutter/material.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';
import 'package:readme_app/view/page/alarm/alarm_page/alarm_page.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/membership/membership_page/memebership_page.dart';
import 'package:readme_app/view/page/membership_cancel/membership_cancel_page.dart';
import 'package:readme_app/view/page/payment/payment_page/payment_page.dart';
import 'package:readme_app/view/page/question/question_page.dart';
import 'package:readme_app/view/page/review/review_page.dart';
import 'package:readme_app/view/page/payment_list/payment_list_page.dart';
import 'package:readme_app/view/page/search/search_list_page/search_list_page.dart';
import 'package:readme_app/view/page/storage/storage_page/storage_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';

import '../../view/page/book_viwer/book_viwer_page/book_viwer_page.dart';


class Move {
  static String categoryPage = "/category";
  static String searchListPage = "/search";
  static String mainPage = "/main";
  static String storagePage = "/storage";
  static String userPage = "/user";
  static String navigationBar = "/navigation";
  static String cartPage = "/cart";
  static String paymentPage = "/payment";
  static String alarmPage = "/alarm";
  static String membershipPage = "/membership";
  static String bookViwerPage = "/viwer";
  static String reviewPage = "/review";
  static String paymentListPage = "/paymentList";
  static String membershipCancelPage = "/membershipCancel";
  static String questionPage = "/question";
}





Map<String, Widget Function(BuildContext)> getRouters() {
  return {
    Move.categoryPage: (context) => CategoryPage(),
    Move.searchListPage: (context) => SearchListPage(),
    Move.mainPage: (context) => MainPage(),
    Move.storagePage: (context) => StoragePage(),
    Move.userPage: (context) => UserPage(),
    Move.navigationBar: (context) => HomeNavigationBar(),
    Move.paymentPage: (context) => PaymentPage(),
    Move.alarmPage: (context) => AlarmPage(),
    Move.cartPage : (context) => CartPage(),
    Move.paymentPage : (context) => PaymentPage(),
    Move.bookViwerPage : (context) => BookViwerPage(),
    Move.membershipPage : (context) => MembershipPage(),
    Move.reviewPage : (context) => ReviewPage(),
    Move.paymentListPage : (context) => PaymentListPage(),
    Move.membershipCancelPage : (context) => MembershipCancelPage(),
    Move.questionPage : (context) => QuestionPage(),
  };
}