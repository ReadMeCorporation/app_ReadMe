import 'package:flutter/material.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/view/page/category/category_page/components/example/category_page_content.dart';

class CategoryPageSubBody extends StatefulWidget {
  List<String> subCategories;

  CategoryPageSubBody({required this.subCategories, Key? key})
      : super(key: key);

  @override
  State<CategoryPageSubBody> createState() => _CategoryPageSubBodyState();
}

class _CategoryPageSubBodyState extends State<CategoryPageSubBody>
    with TickerProviderStateMixin {
  List<String> categories = ['종합', '자기계발', '에세이', '인문', '경영', '언어', '소설', '역사'];

  late TabController _tabController2;

  @override
  void initState() {
    _tabController2 = TabController(
      initialIndex: 0,
      length: 5,
      vsync: this, //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colours.app_main,
            labelStyle: TextStyle(fontWeight: FontWeight.w600),
            unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w100),
            controller: _tabController2,
            tabs: List.generate(5, (index) {
              return Tab(text: "${widget.subCategories[index]}",height: 40,);
            })),
        Expanded(
          child: TabBarView(
              controller: _tabController2,
              children:  List.generate(5, (index) {
                // 카테고리에 맞게 리스트 받기
                return CategoryPageContent();
              }),
        )
        ),
    ],
    );
  }
}
