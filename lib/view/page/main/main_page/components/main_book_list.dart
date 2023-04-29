import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/main/main_page/components/main_book.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainBookList extends ConsumerWidget {

  BookSearchType type;
  MainBookList(this.type, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);

    var count = 0;

    if (type == BookSearchType.total) {
      count = model?.totalBookTiles.length ?? 0;
    } else if (type == BookSearchType.best) {
      count = model?.bestBookTiles.length ?? 0;
    } else if (type == BookSearchType.recommend) {
      count = model?.recommendBookTiles.length ?? 0;
    } else if (type == BookSearchType.latest) {
      count = model?.latestBookTiles.length ?? 0;
    }

    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return MainBook(index, type, count);
      },
    );
  }

}
