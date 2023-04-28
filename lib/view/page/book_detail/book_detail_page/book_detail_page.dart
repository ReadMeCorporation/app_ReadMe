import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/model/review_mock_data.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/components/home_navigation_bar.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildbookcover(context),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _buildCategory(),
                  SizedBox(height: 20),
                  _buildTitle(),
                  SizedBox(height: 8),
                  _buildAuthorStore(),
                  SizedBox(height: 20),
                  _buildPrice(),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: _buildTabBar(),
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(height: 15),
                  _buildListContents(),
                ],
              ),
            ),
          ],
        ),
      ),
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
                        onPressed: () => Move.cartPage,
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
                              onPressed: () => Navigator.pop(context),
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
                                  child: Image.asset(
                                    "assets/images/book.jpg",
                                    height: 170,
                                    width: 100,
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
                              onPressed: () => Navigator.pop(context),
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

  Widget _buildListContents() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "< 책 소개 >",
            style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          Text(
            "${bookDetail.bookInfo}",
            style: TextStyle(
              color: Colours.app_sub_black,
              fontSize: Dimens.font_sp18,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 4,
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "< 목차 >",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  bookContentList.length,
                  (index) {
                    return Text(
                      '- ${bookContentList[index].toString()}',
                      style: TextStyle(
                        fontSize: Dimens.font_sp18,
                        color: Colours.app_sub_black,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "< 작가 정보 >",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "${bookDetail.author}",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "${bookDetail.authorInfo}",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp18,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 4,
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 2,
              ),
              SizedBox(height: 15),
              Text(
                "< 리뷰 관리 >",
                style: TextStyle(
                  color: Colours.app_sub_black,
                  fontSize: Dimens.font_sp20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15),
              Column(
                children: List.generate(
                  riewList.length,
                  (index) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colours.app_sub_grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                StarScore(score: riewList[index].stars),
                                Spacer(),
                                Text("${riewList[index].userId} "),
                                Text("|  ${riewList[index].writeTime}")
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(riewList[index].content),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              Divider(
                thickness: 2,
              ),
              _buildRivewWrite(context),
            ],
          ),
        ],
      ),
    );
  }

  Container _buildRivewWrite(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              "< 리뷰 작성 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: Colours.app_sub_darkgrey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                    initialRating: _rating,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: "내용을 입력하세요",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // 등록 후 위치 이동
                      },
                      child: Text("등록"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colours.app_sub_black,
                        foregroundColor: Colours.app_sub_white,
                        textStyle: TextStyle(fontSize: Dimens.font_sp14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }

  Row _buildPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "소장가 ${bookDetail.price}원",
          style: TextStyle(
            fontSize: Dimens.font_sp20,
            color: Colours.app_sub_black,
          ),
        ),
      ],
    );
  }

  Row _buildAuthorStore() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "${bookDetail.author}",
          style: TextStyle(
            fontSize: Dimens.font_sp24,
            color: Colours.app_sub_black,
          ),
        ),
        SizedBox(width: 10),
        Text(
          "/ ${bookDetail.store}",
          style: TextStyle(
            fontSize: Dimens.font_sp24,
            color: Colours.app_sub_black,
          ),
        ),
      ],
    );
  }

  Row _buildTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            "${bookDetail.title}",
            style: TextStyle(
              fontSize: Dimens.font_sp30,
              fontWeight: FontWeight.w700,
              color: Colours.app_sub_black,
            ),
          ),
        ),
      ],
    );
  }

  Row _buildCategory() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colours.app_sub_darkgrey,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "# ${bookDetail.bigCategory}",
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Colours.app_sub_black,
            ),
          ),
        ),
        SizedBox(width: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colours.app_sub_darkgrey,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "# ${bookDetail.smallCategory}",
            style: TextStyle(
              fontSize: Dimens.font_sp14,
              color: Colours.app_sub_black,
            ),
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTabBar() {
    return [
      TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(
            fontSize: Dimens.font_sp20,
          ),
        ),
        onPressed: () {
          setState(() {
            _selectedButtonIndex = 0;
          });
        },
        child: Text(
          "도서 정보",
          style: TextStyle(
            color: _selectedButtonIndex == 0
                ? Colours.app_sub_black
                : Colours.app_sub_black,
            fontSize: Dimens.font_sp20,
            fontWeight:
                _selectedButtonIndex == 0 ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
      TextButton(
        style: TextButton.styleFrom(
          textStyle: const TextStyle(fontSize: Dimens.font_sp20),
        ),
        onPressed: () {
          setState(() {
            _selectedButtonIndex = 1;
          });
        },
        child: Text(
          "리뷰 관리",
          style: TextStyle(
            color: _selectedButtonIndex == 1
                ? Colours.app_sub_black
                : Colours.app_sub_black,
            fontSize: Dimens.font_sp20,
            fontWeight:
                _selectedButtonIndex == 1 ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    ];
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
              if(Navigator.of(context).widget.pages.length > 1) {
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

  Stack _buildbookcover(BuildContext context) {
    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Image.asset("assets/images/${bookDetail.image}"),
        ),
        Container(
          height: 600,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(60),
            child: Image.asset("assets/images/${bookDetail.image}"),
          ),
        ),
        Positioned(
          left: 280,
          top: 530,
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "/viewer");
              },
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colours.app_sub_white,
                width: 3,
              ),
              borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
              "미리보기",
              style: TextStyle(
                fontSize: Dimens.font_sp16,
                color: Colours.app_sub_white,
              ),
          ),
        ),
            )),
      ],
    );
  }
}

class PurchaseButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PurchaseButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colours.app_sub_black,
        foregroundColor: Colours.app_sub_white,
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}

class MembershipButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MembershipButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        backgroundColor: Colours.app_sub_black,
        foregroundColor: Colours.app_sub_white,
        textStyle: const TextStyle(fontSize: 18),
      ),
      child: Text(text),
      onPressed: onPressed,
    );
  }
}
