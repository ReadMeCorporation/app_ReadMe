import 'package:flutter/material.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/hs_style_icons.dart';
import '../../../../core/constants/yh_style_icons.dart';
import '../../../../model/cart_mock_data.dart';

class ContentBoxPage extends StatefulWidget {
  const ContentBoxPage({super.key});

  @override
  State<ContentBoxPage> createState() => _ContentBoxPageState();
}

class _ContentBoxPageState extends State<ContentBoxPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colours.app_sub_white,
          title: Text(
            "보관함",
            style: TextStyle(
              color: Colours.app_sub_black,
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
          centerTitle: true,
          leading: Row(children: [
            IconButton(
                padding: EdgeInsets.only(left: 10, right: 5),
                constraints: BoxConstraints(),
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: HsStyleIcons.back),
          ]),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(48.0),
            child: Column(
              children: <Widget>[
                const Divider(
                  height: 2,
                  color: Colours.app_sub_black,
                ),
                TabBar(
                  labelColor: Colours.app_sub_black,
                  indicatorColor: Colours.app_main,
                  labelStyle: TextStyle(fontWeight: FontWeight.w700),
                  tabs: <Widget>[
                    Tab(
                      text: "최근본",
                    ),
                    Tab(
                      text: "스크랩",
                    ),
                    Tab(
                      text: "구매",
                    ),
                    Tab(
                      text: "북마크",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            buildRecentlyView(context),
            buildRecentlyView(context),
            buildGridView(),
            buildGridView(),
          ],
        ),
      ),
    );
  }

  GridView buildGridView() {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: cartList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (BuildContext context, int index) {
        final item = cartList[index];
        return TextButton(
          onPressed: (){
            // Navigator.pushNamed(context, "/main", arguments: {
            // 'title': item.title,
            // 'image': item.image,
            // },);
          },
          child: Image.network(
            "${item.image}",
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }

  Widget buildRecentlyView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                    Image.network(
                      "${cartList[index].image}",
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
                        Text(
                          "${cartList[index].title}",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 100,
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
                              onPressed: () {},
                              icon: YhIcons.heart,
                            ),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
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
    );
  }
}
