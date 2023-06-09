import 'package:flutter/material.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';
import 'package:readme_app/model/qustion/question.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';
import 'package:readme_app/view/page/alarm/alarm_page/alarm_page.dart';
import 'package:readme_app/view/page/app_info/app_info_page.dart';
import 'package:readme_app/view/page/auth/login_page/login_page.dart';
import 'package:readme_app/view/page/book_viewer/book_viewer_page/book_viewer_page.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page.dart';
import 'package:readme_app/view/page/category/category_page/category_page.dart';
import 'package:readme_app/view/page/main/main_page/main_page.dart';
import 'package:readme_app/view/page/membership/membership_page/memebership_page.dart';
import 'package:readme_app/view/page/membership_cancel/membership_cancel_page.dart';
import 'package:readme_app/view/page/notice/notice_page.dart';
import 'package:readme_app/view/page/payment/payment_page/payment_page.dart';
import 'package:readme_app/view/page/payment_list/payment_list_page.dart';
import 'package:readme_app/view/page/question/question_page.dart';
import 'package:readme_app/view/page/question_detail/question_detail_page.dart';
import 'package:readme_app/view/page/question_list/question_list_page.dart';
import 'package:readme_app/view/page/review/review_page.dart';
import 'package:readme_app/view/page/search/search_list_page/search_list_page.dart';
import 'package:readme_app/view/page/term/term_webview_page.dart';
import 'package:readme_app/view/page/user/user_page/user_page.dart';

import '../../view/page/bookmark/bookmark_list_page/bookmark_list_page.dart';
import '../../view/page/content_box/content_box_page/content_box_page.dart';

class Move {
  static String categoryPage = "/category";
  static String searchListPage = "/search";
  static String mainPage = "/main";
  static String userPage = "/user";
  static String navigationBar = "/navigation";
  static String cartPage = "/cart";
  static String paymentPage = "/payment";
  static String alarmPage = "/alarm";
  static String membershipPage = "/membership";
  static String bookViewerPage = "/viewer";
  static String reviewPage = "/review";
  static String paymentListPage = "/paymentList";
  static String membershipCancelPage = "/membershipCancel";
  static String questionPage = "/question";
  static String questionDetailPage = "/questionDetail";
  static String questionListPage = "/questionList";
  static String bookmarkListPage = "/bookmarkList";
  static String contentBoxPage = "/contentBox";
  static String bookDetailPage = "/bookDetail";
  static String modalButtonSheet = "/modalButtonSheet";
  static String loginPage = "/login";
  static String appInfo = "/appInfo";
  static String notification = "/notification";
  static String term = "/term";
}

Map<String, Widget Function(BuildContext)> getRouters(){
  return {
    Move.term: (context) => TermWebViewPage(),
    Move.categoryPage: (context) => CategoryPage(),
    Move.searchListPage: (context) => SearchListPage(),
    Move.mainPage: (context) => MainPage(),
    Move.userPage: (context) => UserPage(),
    Move.navigationBar: (context) {
      return HomeNavigationBar(
          // [
          //   CategoryPage(),
          //   SearchListPage(),
          //   MainPage(),
          //   ContentBoxPage(),
          //   UserPage(),
          // ]
      );
    },
    Move.alarmPage: (context) => AlarmPage(),
    Move.paymentPage: (context) => PaymentPage(),
    Move.cartPage: (context) => CartPage(),
    // Move.bookDetailPage: (context) => BookDetailPage(),
    // Move.modalButtonSheet: (context) => ModalButtonSheet(),
    Move.bookViewerPage: (context) {
      return BookViewerPage(ModalRoute.of(context)!.settings.arguments as BookDetailDTO);
    },
    Move.membershipPage: (context) => MembershipPage(),
    Move.reviewPage: (context) => ReviewPage(),
    Move.paymentListPage: (context) => PaymentListPage(),
    Move.membershipCancelPage: (context) => MembershipCancelPage(),
    Move.questionPage: (context) => QuestionPage(ModalRoute.of(context)!.settings.arguments as int),
    Move.questionDetailPage: (context) => QuestionDetailPage(question: ModalRoute.of(context)!.settings.arguments as Question),
    Move.questionListPage: (context) => QuestionListPage(),
    Move.bookmarkListPage: (context) => BookmarkListPage(),
    Move.questionDetailPage: (context) => ContentBoxPage(),
    Move.loginPage: (context) => LoginPage(),
    Move.appInfo: (context) => AppInfoPage(),
    Move.notification: (context) => NoticePage(),

  };
}
