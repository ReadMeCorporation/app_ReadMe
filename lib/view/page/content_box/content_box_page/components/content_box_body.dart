import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/view/page/content_box/content_box_page/components/content_box_grid_item.dart';
import 'package:readme_app/view/page/content_box/content_box_page/components/content_box_list_item.dart';
import 'package:readme_app/view/page/content_box/content_box_page/content_box_view_model.dart';

class ContentBoxBody extends ConsumerWidget {
  const ContentBoxBody({required this.tabController, Key? key}) : super(key: key);
  final TabController tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Logger().d("ContentBoxBody 그려짐");

    tabController.addListener(() {
      if(tabController.index == 1) {
        ref.read(bookControllerProvider).searchContentBox(ContentBoxSearchType.scrap);
      } else if(tabController.index == 2) {
        ref.read(bookControllerProvider).searchContentBox(ContentBoxSearchType.shoppingList);
      } else if(tabController.index == 3) {
        ref.read(bookControllerProvider).searchContentBox(ContentBoxSearchType.bookmark);
      }
    });

    return TabBarView(
      controller: tabController,
      children: <Widget>[
        ContentBoxListItem(ContentBoxSearchType.recently, 0), // 최근본
        ContentBoxListItem(ContentBoxSearchType.scrap, 0), // 스크랩
        ContentBoxGridItem(ContentBoxSearchType.shoppingList, 0), //  구매
        ContentBoxGridItem(ContentBoxSearchType.bookmark, 0), // 북마크
      ],
    );
  }
}
