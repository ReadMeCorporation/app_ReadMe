import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/page/main/main_page/components/main_page_body.dart';

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
    return DefaultTabController(
      length: 4,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colours.app_sub_white,
              flexibleSpace: FlexibleSpaceBar(
                background: _buildAdScreen(),
              ),
              pinned: true,
              expandedHeight: 500,
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
            ),
            SliverAppBar(
              toolbarHeight: 0,
              backgroundColor: Colours.app_sub_white,
              elevation: 1.0,
              pinned: true,
              bottom: TabBar(
                labelStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp14),
                indicatorColor: Colours.app_main,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: "전체"),
                  Tab(text: "베스트셀러"),
                  Tab(text: "추천"),
                  Tab(text: "신간"),
                ],
              ),
            )
          ];
        },
        body: TabBarView(
            children: List.generate(4, (index) {
          return _views();
        })),
      ),
    );
  }

  Widget _views() {
    return ListView.builder(
      itemCount: cartList.length,
      itemBuilder: (context, index) {
        return _mainBookList(index);
      },
    );
  }

  Widget _mainBookList(int index) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, "/bookDetail");
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colours.app_sub_darkgrey),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Image.asset(
                "assets/images/${cartList[index].image}",
                width: 90,
                height: 110,
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${cartList[index].title}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: Dimens.font_sp18,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 100,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    "${cartList[index].author} | ${cartList[index].store}",
                    style: TextStyle(fontSize: Dimens.font_sp14),
                  ),
                  Row(
                    children: [
                      YhIcons.star,
                      Text(
                        "${cartList[index].score}",
                        style: TextStyle(fontSize: Dimens.font_sp14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("소장가 ${cartList[index].price}", style: TextStyle(fontSize: Dimens.font_sp14),),
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
      ),
    );
  }

  Widget _buildAdScreen() {
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
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 450,
                  width: 500,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(imgList[index]),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
