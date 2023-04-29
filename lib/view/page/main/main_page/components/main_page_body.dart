import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/view/page/main/main_page/components/main_ad_screen.dart';
import 'package:readme_app/view/page/main/main_page/components/main_book_list.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainPageBody extends ConsumerWidget {
  const MainPageBody({required this.tabController, Key? key}) : super(key: key);
  final TabController tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    tabController.addListener(() {
      if(tabController.index == 1) {
        ref.read(bookControllerProvider).search(BookSearchType.best);
        } else if(tabController.index == 2) {
          ref.read(bookControllerProvider).search(BookSearchType.recommend);
      } else if(tabController.index == 3) {
        ref.read(bookControllerProvider).search(BookSearchType.latest);
      }
    });

    return DefaultTabController(
      length: 4,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colours.app_sub_white,
              flexibleSpace: FlexibleSpaceBar(
                background: MainAdScreen(),
              ),
              pinned: true,
              expandedHeight: 500,
              leading: IconButton(
                icon: Image.asset(
                  "assets/images/img.png",
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/navigation");
                },
              ),
              actions: [
                IconButton(
                  icon: YhIcons.alarm,
                  onPressed: () {
                    Navigator.pushNamed(context, "/alarm");
                  },
                ),
                IconButton(
                    icon: YhIcons.cart,
                    onPressed: () {
                      Navigator.pushNamed(context, "/cart");
                    })
              ],
            ),
            SliverAppBar(
              toolbarHeight: 0,
              backgroundColor: Colours.app_sub_white,
              elevation: 1.0,
              pinned: true,
              bottom: TabBar(
                controller: tabController,
                labelStyle: const TextStyle(fontWeight: FontWeight.w700, fontSize: Dimens.font_sp14),
                indicatorColor: Colours.app_main,
                indicatorWeight: 3,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: const [
                  Tab(text: "전체"),
                  Tab(text: "베스트셀러"),
                  Tab(text: "추천"),
                  Tab(text: "신간"),
                ],
              ),
            )
          ];
        },
        body: TabBarView(
          controller: tabController,
          children: [
            MainBookList(BookSearchType.total),
            MainBookList(BookSearchType.best),
            MainBookList(BookSearchType.recommend),
            MainBookList(BookSearchType.latest)
          ]),
      ),
    );
  }
}
