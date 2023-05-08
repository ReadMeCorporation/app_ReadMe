import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/controller/cart_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainBook extends ConsumerWidget {

  int idx;
  String name;
  int count;
  String requestName;

  MainBook(this.idx, this.name, this.count, this.requestName);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);
    bool isLast = false;
    int page = 0;
    var tableUser = MySqfliteInit.getUser();

    Book? book;
    if (name == "전체") {
      book = model?.totalBooks[idx];
      isLast = model?.isTotalLast ?? false;
      page = ((model?.totalPage) ?? 0) + 1;
    } else if (name == "베스트셀러") {
      book = model?.bestBooks[idx];
      isLast = model?.isBestLast ?? false;
      page = ((model?.bestPage ) ?? 0) + 1;
    } else if (name == "추천") {
      book = model?.recommendBooks[idx];
      isLast = model?.isRecommendLast ?? false;
      page = ((model?.recommendPage ) ?? 0) + 1;
    } else if (name == "신간") {
      book = model?.latestBooks[idx];
      isLast = model?.isLatestLast ?? false;
      page = ((model?.latestPage ) ?? 0) + 1;
    }

    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/bookDetail", arguments: {'id': book?.id ?? 0});
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colours.app_sub_darkgrey),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Image.network(
                    book?.coverFile.fileUrl ?? "",
                    width: 90,
                    height: 110,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book?.title ?? "",
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Dimens.font_sp18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        "${book?.author} | ${book?.publisher.businessName}",
                        style: const TextStyle(fontSize: Dimens.font_sp14),
                      ),
                      Row(
                        children: [
                          YhIcons.star,
                          Text(
                            book?.stars.toString() ?? "",
                            style: const TextStyle(fontSize: Dimens.font_sp14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("소장가 ${book?.price}", style: const TextStyle(fontSize: Dimens.font_sp14),),
                          const SizedBox(width: 100),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              // 추후 추가
                            },
                            icon: YhIcons.heart,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: const BoxConstraints(),
                            onPressed: () {
                              ref.read(cartControllerProvider).insert(book!.id);
                              // Navigator.pushNamed(context, "/cart");
                            },
                            icon: YhIcons.cart2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        isLast != true && count - 1 == idx
            ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
              child: UseButton(title: "더보기", buttonPressed: () {
                  ref.read(bookControllerProvider).pageSearch(name, page, requestName);
                }
              ),
            )
            : Container()
      ],
    );
  }

}
