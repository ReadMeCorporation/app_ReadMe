import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/content_box_mock_data.dart';
import 'package:readme_app/view/page/content_box/content_box_page/content_box_view_model.dart';

class ContentBoxGridItem extends ConsumerWidget {
  int idx;
  ContentBoxSearchType type;
  ContentBoxGridItem(this.type, this.idx, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    ContentBoxPageModel? model = ref.watch(contentBoxPageProvider);
    bool isLast = true;
    int page = 1;

    List<ContentBoxMockData>? books;


    var count = 0;

    if (type == ContentBoxSearchType.shoppingList) {
      count = model?.shoppingListBookTiles.length ?? 0;
      books = model?.shoppingListBookTiles;
      isLast = model?.isShoppingListLast ?? false;
      page = (model?.shoppingListPage++) ?? 1;
    } else if (type == ContentBoxSearchType.bookmark) {
      count = model?.bookmarkBookTiles.length ?? 0;
      books = model?.bookmarkBookTiles;
      isLast = model?.isBookmarkLast ?? false;
      page = (model?.bookmarkPage ++) ?? 1;
    }

    return GridView.builder(
      padding: const EdgeInsets.all(20),
      itemCount: count,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (BuildContext context, int index) {
        final item = books;
        return TextButton(
          onPressed: () {
            // Navigator.pushNamed(context, "/main", arguments: {
            // 'title': item.title,
            // 'image': item.image,
            // },);
            /// 이동 경로 작성하기
          },
          child: Image.network(
            books![index].imgPath,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
