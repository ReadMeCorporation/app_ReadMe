import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

int _selectedButtonIndex = 0;

class _BookDetailPageState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Row(
          children: [
            IconButton(
              icon: YhIcons.back,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
              icon: YhIcons.homeFill,
              onPressed: () {
                Navigator.pushNamed(context, "/main");
              },
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: YhIcons.cart3,
              onPressed: () {
                Navigator.pushNamed(context, "/cart");
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildbookcover(context),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colours.app_sub_darkgrey,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "# ${bookDetail.bigCategory}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colours.app_sub_black,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colours.app_sub_darkgrey,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "# ${bookDetail.smallCategory}",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colours.app_sub_black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${bookDetail.title}",
                        style: TextStyle(
                          fontSize: Dimens.font_sp30,
                          fontWeight: FontWeight.w700,
                          color: Colours.app_sub_black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "${bookDetail.author}",
                        style: TextStyle(
                          fontSize: Dimens.font_sp24,
                          color: Colours.app_sub_black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "/ ${bookDetail.store}",
                        style: TextStyle(
                          fontSize: Dimens.font_sp24,
                          color: Colours.app_sub_black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "소장가 ${bookDetail.price}원",
                        style: TextStyle(
                          fontSize: Dimens.font_sp20,
                          color: Colours.app_sub_black,
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                            fontWeight: _selectedButtonIndex == 0
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle:
                              const TextStyle(fontSize: Dimens.font_sp20),
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
                            fontWeight: _selectedButtonIndex == 1
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(height: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "< 책 소개 >",
                        style: TextStyle(
                            color: Colours.app_sub_black,
                            fontSize: Dimens.font_sp20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "${bookDetail.bookInfo}",
                        style: TextStyle(
                          color: Colours.app_sub_black,
                          fontSize: Dimens.font_sp18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "< 목차 >",
                            style: TextStyle(
                              color: Colours.app_sub_black,
                              fontSize: Dimens.font_sp20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: List.generate(
                              bookContentList.length,
                              (index) {
                                return Text(
                                  '- ${bookContentList[index].toString()}',
                                  style: TextStyle(
                                    fontSize: Dimens.font_sp18,
                                    color: Colours.app_sub_black,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "< 작가 정보 >",
                            style: TextStyle(
                              color: Colours.app_sub_black,
                              fontSize: Dimens.font_sp20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            "${bookDetail.author}",
                            style: TextStyle(
                              color: Colours.app_sub_black,
                              fontSize: Dimens.font_sp18,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "${bookDetail.authorInfo}",
                            style: TextStyle(
                              color: Colours.app_sub_black,
                              fontSize: Dimens.font_sp18,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                          ),
                          SizedBox(height: 15),
                          Divider(
                            thickness: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack _buildbookcover(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Image.asset("assets/images/${bookDetail.image}"),
        ),
        Container(
          height: 600,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(60),
            child: Image.asset("assets/images/${bookDetail.image}"),
          ),
        ),
      ],
    );
  }
}
