import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/hs_style_icons.dart';
import '../../../../core/constants/jh_style_icons.dart';

class BookmarkListPage extends StatefulWidget {
  BookmarkListPage({Key? key}) : super(key: key);

  @override
  _BookmarkListPageState createState() => _BookmarkListPageState();
}

class _BookmarkListPageState extends State<BookmarkListPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final bookmarkContent = [
    "1대를 영원히 붙잡아 두기소리다이것은 피어나기 ...",
    "2대를 영원히 붙잡아 두기소리다이것은 피어나기 ...",
    "3대를 영원히 붙잡아 두기소리다이것은 피어나기 ...",
  ]; // 북마크 임시 갯수
  final bookmarkPageNumber = 148; // 북마크 한 페이지
  final bookmarkTime = "2023-04-21"; // 북마크 한 날짜
  final bookmarkIndex = 3; //

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            key: _scaffoldKey,
            appBar: bookmarkAppBar(),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: ListView.builder(
                  itemCount: bookmarkIndex,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: JHicons.bookmark15,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text("${bookmarkContent[index]}",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "P. ${bookmarkPageNumber} / ${bookmarkTime}",
                                  style: TextStyle(fontSize: 12),
                                )
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colours.app_main.withOpacity(0.4),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )),
      ),
    );
  }

  AppBar bookmarkAppBar() {
    return AppBar(
      backgroundColor: Colours.app_sub_white,
      title: Text(
        "북마크",
        style: TextStyle(
            color: Colours.app_sub_black,
            fontWeight: FontWeight.w700,
            fontSize: 22),
      ),
      centerTitle: true,
      leading: Row(
        children: [
          HsStyleIcons.back,
        ],
      ),
      leadingWidth: 100,
    );
  }
}
