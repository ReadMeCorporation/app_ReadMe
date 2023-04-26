import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/use_icons.dart';
import 'package:validators/validators.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/hs_style_icons.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../../../../core/constants/yh_style_icons.dart';
import '../../../../model/cart_mock_data.dart';

class SearchListPage extends StatefulWidget {
  SearchListPage({Key? key}) : super(key: key);

  @override
  _SearchListPageState createState() => _SearchListPageState();
}

class _SearchListPageState extends State<SearchListPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool recentlyWords = false;
  var searchWords = "1984";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          appBar: searchAppBar(),
          body: searchWords == "1984" ? buildSearchSuccess() : buildRecentlyWords()
        ),
      ),
    );
  }

  Column buildRecentlyWords() {
    return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10),
              child: Text(
                "최근 검색어",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 400,
                child: recentlyWords == true
                    ? Text("1. 1984")
                    : Center(
                        child: Text("최근 검색어가 없습니다.",
                            style: TextStyle(fontSize: 16))),
                margin: EdgeInsets.symmetric(vertical: 10),
                height: 150,
                decoration: BoxDecoration(
                  color: Colours.app_sub_grey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        );
  }
  Widget buildSearchSuccess() {
    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 1,
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
                      "assets/images/${cartList[0].image}",
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

  AppBar searchAppBar() {
    return AppBar(
      backgroundColor: Colours.app_sub_white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(child: HsStyleIcons.back),
          // Container(child: UseIcons.search),
          Form(
            key: _formKey,
            child: Row(
              children: <Widget>[
                Container(
                  width: 300,
                  // height: 40,
                  decoration: BoxDecoration(
                    // color: Colours.app_main,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: TextFormField(
                    maxLines: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: '검색어를 입력해주세요',
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    onFieldSubmitted: (value) {
                      if (_formKey.currentState!.validate()) {
                        // 검색어가 유효하면 검색 함수를 실행합니다.
                        // search(value);
                        return print("검색 성공!");
                      }
                    },
                  ),
                ),
                Container(child: JHicons.search),
              ],
            ),
          ),
        ],
      ),
      centerTitle: true,
    );
  }
}
