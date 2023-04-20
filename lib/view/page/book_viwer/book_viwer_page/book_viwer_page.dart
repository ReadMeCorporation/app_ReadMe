import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/view/page/book_viwer/components/book_drawer_no_membership.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/hs_style_icons.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../components/book_data.dart';
import '../components/book_drawer.dart';

class BookViwerPage extends StatefulWidget {
  BookViwerPage({Key? key}) : super(key: key);

  @override
  _BookViwerPageState createState() => _BookViwerPageState();
}

class _BookViwerPageState extends State<BookViwerPage> {
  bool _showAppBarAndBottomSheet = false;
  bool _isBookMark = false;
  bool _membership = true;
  double _currentSliderValue = 100;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          endDrawer: _membership == false
              ? BookDrawerNoMembership(scaffoldKey: _scaffoldKey)
              : BookDrawer(scaffoldKey: _scaffoldKey),
          body: GestureDetector(
            onTap: () {
              setState(() {
                _showAppBarAndBottomSheet = !_showAppBarAndBottomSheet;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (_showAppBarAndBottomSheet)
                  AppBar(
                    backgroundColor: Colours.app_sub_white,
                    title: Text(
                      "스즈메의 문단속",
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
                  ),
                Visibility(
                  visible: _isBookMark,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        child: JHicons.bookmark25,
                      ),
                    ),
                  ),
                ),
                Expanded( // 책내용 컨테이너 박스
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: BookData.bookData,
                        ),
                        width: MediaQuery.of(context).size.width - 40,
                        height: MediaQuery.of(context).size.height - 100,
                      ),
                    ),
                  ),
                ),
                if (_showAppBarAndBottomSheet)
                  BottomSheet(
                    onClosing: () {},
                    builder: (context) {
                      return Container(
                        height: 150,
                        color: Colours.app_sub_white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 5.0, left: 5.0, right: 5.0),
                                child: Slider(
                                  value: _currentSliderValue,
                                  max: 100,
                                  divisions: 100,
                                  label:
                                      _currentSliderValue.round().toString(),
                                  onChanged: (double value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("9 페이지로 이동됨");
                                          },
                                          icon: JHicons.backArrow25),
                                    ),
                                    Container(
                                      child: Text('10 - 300'),
                                    ),
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("11 페이지로 이동됨");
                                          },
                                          icon: JHicons.fowardArrow25),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            print("11 페이지로 이동됨");
                                          },
                                          icon: JHicons.bookBox),
                                    ),
                                    Container(
                                      child: IconButton(
                                          onPressed: () {
                                            _scaffoldKey.currentState?.openEndDrawer();
                                          },
                                          icon: JHicons.hambuger),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
