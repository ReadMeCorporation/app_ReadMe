import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/view/page/category/category_page/components/example/category_page_sub_body.dart';

class CategoryPageBody extends StatefulWidget {
  const CategoryPageBody({Key? key}) : super(key: key);

  @override
  State<CategoryPageBody> createState() => _CategoryPageBodyState();
}

class _CategoryPageBodyState extends State<CategoryPageBody>
    with TickerProviderStateMixin {
  late TabController _tabController;

  List<String> categories = ['종합', '자기계발', '에세이', '인문', '경영', '언어', '소설', '역사'];

  List<String> total = ['성공/처세 ', '인간관계', '화술/협상', '시간관리', '리더십'];

  @override
  void initState() {
    _tabController = TabController(
      initialIndex: 0,
      length: categories.length,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _tabbar(),
        _body()
      ],
    );
  }

  Widget _tabbar() {
    return Container(
        height: 60,
        decoration: BoxDecoration(color: Colours.app_sub_black),
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          indicator: BoxDecoration(color: Colours.app_main),
          labelColor: Colours.app_sub_white,
          unselectedLabelColor: Colours.app_sub_white,
          labelStyle: TextStyle(fontWeight: FontWeight.w700),
          controller: _tabController,
          tabs: List.generate(categories.length, (index) {
            return SizedBox(width: 67, child: Tab(text: "${categories[index]}"));
          }),
        ),
      );
  }

  Widget _body() {
    return Expanded(
      child: TabBarView(
          controller: _tabController,
          children:
          List.generate(categories.length, (index) {
            return  CategoryPageSubBody(subCategories: total);
          })

      ),
    );
  }

}
