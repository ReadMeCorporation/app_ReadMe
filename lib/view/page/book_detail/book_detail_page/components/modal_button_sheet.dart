import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';

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
                    controller: _tabController,
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
                          child: Center(child: Text('Content of Tab 1')),
                        ),
                        Container(
                          color: Colors.white,
                          child: Center(child: Text('Content of Tab 2')),
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
