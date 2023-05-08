import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/model/review_mock_data.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_body.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_cover.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/membership_button.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/purchase_button.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({Key? key}) : super(key: key);

  @override
  State<BookDetailPage> createState() => _BookDetailPageState();
}

int _selectedButtonIndex = 0;
double _rating = 0;
final _textController = TextEditingController();

class _BookDetailPageState extends State<BookDetailPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      extendBodyBehindAppBar: true,
      appBar: _buildAppBar(context),
      body: BookDetailBody(),
      bottomSheet: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                isLiked ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  padding: EdgeInsets.all(5),
                ),
                child: Text("장바구니"),
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text("장바구니 담기 완료"),
                    content: const Text("장바구니로 이동하시겠습니까?"),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Cancle'),
                        child: const Text('Cancle'),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pushNamed(context, '/cart'),
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  textStyle: TextStyle(color: Colors.white, fontSize: 20),
                  padding: EdgeInsets.all(5),
                ),
                child: Text("구독 / 소장"),
                onPressed: () {
                  _showModalBottomSheet();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Column(
            children: [
              TabBar(
                labelStyle: TextStyle(fontSize: 22),
                controller: _tabController,
                indicatorColor: Colours.app_main,
                tabs: [
                  Tab(text: '멤버십 구독'),
                  Tab(text: '소장'),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ReadMe 멤버가 아니신가요?',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(height: 40),
                            Text(
                              '멤버십을 구독하고 모든 도서를 자유롭게 열람해 보세요.',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '월 9,900원',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '(VAT 포함)',
                                  style: TextStyle(
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                            MembershipButton(
                              text: '멤버십 구독하기',
                              onPressed: () => Navigator.pushNamed(context, '/membership'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  child: CachedNetworkImage(
                                    height: 150,
                                    width: 100,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    imageUrl:
                                        'https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${bookDetail.title}',
                                      style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      '${bookDetail.author}',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          '소장가 ${bookDetail.price}원',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        Text(
                                          '(VAT 포함)',
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            //SizedBox(height: 30),
                            PurchaseButton(
                              text: '소장하기',
                              onPressed: () => Navigator.pushNamed(context, '/cart'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }








  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leadingWidth: 100,
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: Row(
        children: [
          IconButton(
            icon: YhIcons.back,
            onPressed: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeNavigationBar()));
              if (Navigator.of(context).widget.pages.length > 1) {
                Navigator.pop(context);
                // Navigator.popUntil(context, ModalRoute.withName('/'));
              } else {
                Navigator.pushNamed(context, "/navigation");
              }
            },
          ),
          IconButton(
            icon: YhIcons.homeFill,
            onPressed: () {
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeNavigationBar()));
              Navigator.pushNamed(context, "/navigation");
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
    );
  }

}



