import 'dart:ui';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/controller/book_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/view/components/use_button.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class MainBook extends ConsumerWidget {

  int idx;
  BookSearchType type;
  int count;

  MainBook(this.idx, this.type, this.count);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    MainPageModel? model = ref.watch(mainPageProvider);
    bool isLast = false;
    int page = 1;

    Book? book;
    if (type == BookSearchType.total) {
      book = model?.totalBooks[idx];
      isLast = model?.isTotalLast ?? false;
      page = (model?.totalPage ++) ?? 1;
    } else if (type == BookSearchType.best) {
      book = model?.bestBooks[idx];
      isLast = model?.isBestLast ?? false;
      page = (model?.bestPage ++) ?? 1;
    } else if (type == BookSearchType.recommends) {
      book = model?.recommendBooks[idx];
      isLast = model?.isRecommendLast ?? false;
      page = (model?.recommendPage ++) ?? 1;
    } else if (type == BookSearchType.latest) {
      book = model?.latestBooks[idx];
      isLast = model?.isLatestLast ?? false;
      page = (model?.latestPage ++) ?? 1;
    }

    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/bookDetail");
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
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        book?.title ?? "",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: Dimens.font_sp18,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "${book?.author} | ${book?.publisher}",
                        style: TextStyle(fontSize: Dimens.font_sp14),
                      ),
                      Row(
                        children: [
                          YhIcons.star,
                          Text(
                            book?.stars.toString() ?? "",
                            style: TextStyle(fontSize: Dimens.font_sp14),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("소장가 ${book?.price}", style: TextStyle(fontSize: Dimens.font_sp14),),
                          SizedBox(width: 100),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              // 추후 추가
                            },
                            icon: YhIcons.heart,
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            onPressed: () {
                              Navigator.pushNamed(context, "/cart");
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

        !isLast && count - 1 == idx
            ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 50),
              child: UseButton(title: "더보기", buttonPressed: () {
                  ref.read(bookControllerProvider).pageSearch(type, page);
                }
              ),
            )
            : Container()
      ],
    );
  }

}
