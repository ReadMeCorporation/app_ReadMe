import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
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
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(text: "TEST"),
                  Tab(text: "TEST"),
                  Tab(text: "TEST"),
                  Tab(text: "TEST"),
                ],
              ),
            )
          ];
        },
        body: TabBarView(
            children: List.generate(4, (index) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                color: Colors.red,
                height: 50,
                child: Text("test"),
              );
            },
            itemCount: 20,
          );
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
