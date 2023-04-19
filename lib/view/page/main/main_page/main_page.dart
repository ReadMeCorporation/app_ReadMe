import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:card_swiper/card_swiper.dart';

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

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Container(
        height: 450,
        width: double.infinity,
        child: Swiper(
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
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    backgroundColor: Colours.app_sub_white,
    leading: IconButton(
      icon: Image.asset(
        "assets/images/img.png",
      ),
      onPressed: () {},
    ),
    actions: [
      IconButton(
        icon: UseIcons.alarm,
        onPressed: () {
          //Move.AlarmPage();
        },
      ),
      IconButton(
          icon: UseIcons.cart,
          onPressed: () {
            //Move.CartPage();
          })
    ],
  );
}
