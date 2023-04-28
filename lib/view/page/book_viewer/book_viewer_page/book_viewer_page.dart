import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page.dart';
import 'package:readme_app/view/page/book_viewer/components/book_drawer_no_membership.dart';
import 'package:readme_app/view/page/bookmark/bookmark_list_page/bookmark_list_page.dart';
import '../../../../core/constants/colours.dart';
import '../../../../core/constants/jh_style_icons.dart';
import '../../../../util/epub/src/helpers/epub_document.dart';
import '../../../../util/epub/src/ui/epub_view.dart';
import '../components/book_drawer.dart';

class BookViewerPage extends StatefulWidget {
  BookViewerPage({Key? key}) : super(key: key);

  @override
  _BookViewerPageState createState() => _BookViewerPageState();
}

/// 책 받아오기
class _BookViewerPageState extends State<BookViewerPage>
    with WidgetsBindingObserver {

  late EpubController _epubReaderController;
  bool _isBookMark = true;
  bool _membership = true;
  double _currentSliderValue = 100;
  double _fontSize = 18.0;
  bool _showAppBarAndBottomSheet = false;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    _epubReaderController = EpubController(
      document: EpubDocument.openAsset('assets/epubs/test3.epub'),
    );
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    _epubReaderController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context)   {
    return  Scaffold(
        extendBodyBehindAppBar: true,
        appBar: _showAppBarAndBottomSheet
            ? AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: JHicons.back,
            onPressed: () {
              if(Navigator.of(context).widget.pages.length > 1) {
                Navigator.pop(context);
              } else {
                Navigator.pushNamed(context, "/bookDetail");
              }
            },
          ),
          backgroundColor: Colours.app_sub_white,
          title: Text(
            "스즈메의 문단속",
            style: TextStyle(
                color: Colours.app_sub_black,
                fontWeight: FontWeight.w700,
                fontSize: 22),
          ),
        )
            : null,
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
              // buildAppBar(), /// Appbar
              buildBookmark(),
              /// 북마크
              Expanded(
                // 책내용
                child: Center(
                  child: Container(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: buildEpubView()),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                  ),
                ),
              ),
              buildBottomSheet()

              /// BottomSheet
            ],
          ),
        ),
      );
  }

  Widget buildBottomSheet() {
    return Visibility(
      visible: _showAppBarAndBottomSheet,
      child: BottomSheet(
        onClosing: () {},
        builder: (context) {
          return Container(
            height: 120,
            color: Colours.app_sub_white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 5.0, left: 5.0, right: 5.0),
                          child: Slider(
                            thumbColor: Colours.app_main,
                            inactiveColor: Colours.app_sub_grey,
                            activeColor: Colours.app_main,
                            value: _currentSliderValue,
                            max: 100,
                            divisions: 100,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Text("100%"),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/bookmarkList");
                          },
                          child: JHicons.bookBox),
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
              ],
            ),
          );
        },
      ),
    );
  }


  EpubView buildEpubView() {
    return EpubView(
      controller: _epubReaderController,
      builders: EpubViewBuilders<DefaultBuilderOptions>(
        options: DefaultBuilderOptions(
          textStyle: TextStyle(
            height: 1.25,
            fontSize: _fontSize,
            color: Colors.black87,
            fontFamily: "NanumGothic",
          ),
        ),
      ),
    );
  }

  Widget buildBookmark() {
    return Visibility(
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
    );
  }

}

