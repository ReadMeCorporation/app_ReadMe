import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';

class ModalButtonSheet extends StatefulWidget {
  const ModalButtonSheet({Key? key}) : super(key: key);

  @override
  State<ModalButtonSheet> createState() => _ModalButtonSheetState();
}

class _ModalButtonSheetState extends State<ModalButtonSheet>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(CupertinoIcons.heart, size: 40),
              onPressed: () {
                // scrap
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
                onPressed: () {
                  // 모달창 들어가기
                },
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
                  _showModalBottomSheet(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return Container(
              height: MediaQuery.of(context).size.height / 3,
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
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text(
                                  'ReadMe 멤버가 아니신가요?',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  '멤버십을 구독하고 모든 도서를 자유롭게 열람해 보세요.',
                                  style: TextStyle(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '월 9,900원',
                                      style: TextStyle(
                                          fontSize: 22,
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
                                SizedBox(height: 10),
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
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                  child: Image.asset(
                                    "assets/images/book.jpg",
                                    // height: 150,
                                    // width: 150,
                                  ),
                                ),
                                SizedBox(width: 30),
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
                          ),
                        ),
                        SizedBox(height: 10),
                        PurchaseButton(
                          text: '소장하기',
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
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
