import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/core/constants/yh_style_icons.dart';
import 'package:readme_app/model/content_box_mock_data.dart';
import 'package:readme_app/view/page/content_box/content_box_page/content_box_view_model.dart';

class ContentBoxListItem extends ConsumerWidget {

  int idx;
  ContentBoxSearchType type;
  ContentBoxListItem(this.type, this.idx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ContentBoxPageModel? model = ref.watch(contentBoxPageProvider);
    bool isLast = true;
    int page = 1;

    List<ContentBoxMockData>? books;

    var count = 0;

    if (type == ContentBoxSearchType.recently) {
      count = model?.recentlyBookTiles.length ?? 0;
      books = model?.recentlyBookTiles;
      isLast = model?.isRecentlyLast ?? false;
      page = (model?.recentlyPage ++) ?? 1;
    } else if (type == ContentBoxSearchType.scrap) {
      count = model?.scrapBookTiles.length ?? 0;
      books = model!.scrapBookTiles;
      isLast = model?.isScrapLast ?? false;
      page = (model?.scrapPage ++) ?? 1;
    }


    return SingleChildScrollView(
      child: Container(
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: count,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colours.app_sub_darkgrey),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.network(
                      books![index].imgPath,
                      width: 100,
                      height: 150,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                       books![index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: Dimens.font_sp20,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 100,
                        ),
                        Text(
                          "${books![index].author} | ${books![index].store}",
                          // "조지 오웰 | 데이원",
                          style: TextStyle(fontSize: Dimens.font_sp14),
                        ),
                        Row(
                          children: [
                            YhIcons.star,
                            Text(
                              books![index].star.toString() ?? "",
                              style: TextStyle(fontSize: Dimens.font_sp14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text("소장가 ${books![index].price}", style: TextStyle(fontSize: Dimens.font_sp14),),
                            SizedBox(width: 100),
                            IconButton(
                              padding: EdgeInsets.zero,
                              constraints: BoxConstraints(),
                              onPressed: () {},
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
            );
          },
        ),
      ),
    ); ;
  }
}
