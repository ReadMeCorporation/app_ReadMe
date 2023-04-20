import 'package:flutter/material.dart';

class CategoryPageBody extends StatefulWidget {
  const CategoryPageBody({Key? key}) : super(key: key);

  @override
  State<CategoryPageBody> createState() => _CategoryPageBodyState();
}

class _CategoryPageBodyState extends State<CategoryPageBody> with TickerProviderStateMixin {

  late TabController _tabController;

  List<String> categoryList = [
    '종합', '자기계발', '에세이','인문','경영','언어','소설','역사'
  ];

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,  //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TabBar(
            tabs: [
              Container(
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  'Tab1',
                ),
              ),
              Container(
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  'Tab2',
                ),
              ),
            ],
            indicator: BoxDecoration(
              gradient: LinearGradient(  //배경 그라데이션 적용
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blueAccent,
                  Colors.pinkAccent,
                ],
              ),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            controller: _tabController,
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Container(
                color: Colors.yellow[200],
                alignment: Alignment.center,
                child: Text(
                  'Tab1 View',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                color: Colors.green[200],
                alignment: Alignment.center,
                child: Text(
                  'Tab2 View',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}






