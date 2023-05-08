import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/main/main_page/components/main_book.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainBookList extends ConsumerWidget {

  String name;
  String requestName;
  MainBookList(this.name, this.requestName, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);

    var count = 0;

    if (name == "전체") {
      count = model?.totalBooks.length ?? 0;
    } else if (name == "베스트셀러") {
      count = model?.bestBooks.length ?? 0;
    } else if (name == "추천") {
      count = model?.recommendBooks.length ?? 0;
    } else if (name == "신간") {
      count = model?.latestBooks.length ?? 0;
    }

    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return MainBook(index, name, count, requestName);
      },
    );
  }

}
