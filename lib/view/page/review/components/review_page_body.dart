
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:readme_app/controller/review_controller.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page.dart';
import 'package:readme_app/view/page/review/review_page_view_model.dart';

class ReviewPageBody extends ConsumerWidget {

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ReviewPageModel? model = ref.watch(reviewPageProvider);

    return Column(
      children: List.generate(model?.reviewList.length ?? 0, (index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: _reviewTile(context, ref, index, model?.reviewList[index].book.id ?? 0),
        );
      }),
    );
  }

  Widget _reviewTile(BuildContext context, WidgetRef ref, int index, int bookId) {
    return InkWell(
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colours.app_sub_grey),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                _topInfo(index, context, ref),
                SizedBox(
                  height: 10,
                ),
                _bottomInfo(ref, index),
              ],
            ),
          )),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  BookDetailPage(bookId:bookId),
            ));
      },
    );
  }

  Widget _bottomInfo(WidgetRef ref, int index) {
    ReviewPageModel? model = ref.watch(reviewPageProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Container(
            height: 90,
            width: 70,
            child: CachedNetworkImage(
               imageUrl: model?.reviewList[index].book.coverUrl ?? "",
              placeholder : (context, url) => Center(
                child: LoadingAnimationWidget.twoRotatingArc(
                  size: 50,
                  color: Colours.app_main,
                ),
              ),
              fit : BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(model?.reviewList[index].book.title ?? "", style: TextStyle(fontSize: Dimens.font_sp12),),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text("|"),
                ),
                Text(model?.reviewList[index].book.author ?? "", style: TextStyle(fontSize: Dimens.font_sp12),),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 250,
              child: Text(
                model?.reviewList[index].content ?? "",
                style: TextStyle(fontSize: Dimens.font_sp16),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _topInfo( int index,BuildContext context, WidgetRef ref) {
    ReviewPageModel? model = ref.watch(reviewPageProvider);
    ReviewController controller = ref.read(reviewControllerProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            StarScore(score: model?.reviewList[index].stars ?? 0,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text("|"),
            ),
            Text(
              model?.reviewList[index].writeTime ?? "",
              style: TextStyle(fontSize: Dimens.font_sp12),
            )
          ],
        ),
        SizedBox(
          height: 20,
          width: 40,
          child: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    scrollable: false,
                    alignment: Alignment.center,
                    content: Text("댓글을 삭제하시겠습니까?", style: TextStyle(fontSize: Dimens.font_sp16),),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context, '취소');
                          },
                          child: Text('취소')),
                      TextButton(
                          onPressed: () {
                            // 추가
                            controller.delete(model?.reviewList[index].id ?? 0);
                          },
                          child: Text('확인')),
                    ],
                  );
                },
              );
            },
            child: Text("삭제"),
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
          ),
        )
      ],
    );
  }


}
