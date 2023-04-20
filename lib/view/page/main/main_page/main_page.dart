import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/hs_style_icons.dart';

import 'package:readme_app/core/constants/use_icons.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

final List<String> imgList = [
  "assets/images/book1.png",
  "assets/images/book2.png",
  "assets/images/book3.png",
];

int _selectedButtonIndex = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildMainScrollView,
    );
  }

  SingleChildScrollView get _buildMainScrollView {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildAdScreen(),
          _buildMainListBar(),
          Container(
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cartList.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colours.app_sub_darkgrey),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/${cartList[index].image}",
                          width: 100,
                          height: 150,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "/bookDetail");
                              },
                              child: Text(
                                "${cartList[index].title}",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 100,
                              ),
                              style: TextButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.only(bottom: 7),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                            Text(
                              "${cartList[index].author} | ${cartList[index].store}",
                              style: TextStyle(fontSize: 16),
                            ),
                            Row(
                              children: [
                                YhIcons.star,
                                Text(
                                  "${cartList[index].score}",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text("소장가 ${cartList[index].price}"),
                                SizedBox(width: 100),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    // 추후 추가
                                  },
                                  icon: YhIcons.heart,
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: BoxConstraints(),
                                  onPressed: () {
                                    Navigator.pushNamed(context, "/cart");
                                  },
                                  icon: YhIcons.cart2,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container _buildMainListBar() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colours.app_sub_darkgrey),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 0;
                });
              },
              child: Text(
                "전체",
                style: TextStyle(
                  color: _selectedButtonIndex == 0
                      ? Colours.app_main
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: Dimens.font_sp20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 1;
                });
              },
              child: Text(
                "베스트셀러",
                style: TextStyle(
                  color: _selectedButtonIndex == 1
                      ? Colours.app_main
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: Dimens.font_sp20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 2;
                });
              },
              child: Text(
                "추천",
                style: TextStyle(
                  color: _selectedButtonIndex == 2
                      ? Colours.app_main
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(
                    fontSize: Dimens.font_sp20, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  _selectedButtonIndex = 3;
                });
              },
              child: Text(
                "신간",
                style: TextStyle(
                  color: _selectedButtonIndex == 3
                      ? Colours.app_main
                      : Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildAdScreen() {
    return Container(
      height: 450,
      width: double.infinity,
      child: Swiper(
        // autoplay: true,
        // duration: 5,
        // autoplayDelay: 5,
        controller: SwiperController(),
        pagination: SwiperPagination(),
        itemCount: imgList.length,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 40, sigmaY: 10),
                child: Image.asset(imgList[index], fit: BoxFit.cover),
              ),
              Container(
                height: 450,
                width: 500,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(imgList[index]),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

AppBar _buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colours.app_sub_white,
    leading: IconButton(
      icon: Image.asset(
        "assets/images/img.png",
      ),
      onPressed: () {
        Navigator.pushNamed(context, "/main");
      },
    ),
    actions: [
      IconButton(
        icon: YhIcons.alarm,
        onPressed: () {
          Navigator.pushNamed(context, "/alarm");
        },
      ),
      IconButton(
          icon: YhIcons.cart,
          onPressed: () {
            Navigator.pushNamed(context, "/cart");
          })
    ],
  );
}
