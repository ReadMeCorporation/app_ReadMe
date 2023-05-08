import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/book_detail_mock_data.dart';
import 'package:readme_app/model/review_mock_data.dart';
import 'package:readme_app/util/star_score/star_score.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/book_detail_cover.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/components/my_tab_bar.dart';

import 'package:readme_app/view/page/book_detail/book_detail_page/components/rivew_write.dart';

class BookDetailBody extends ConsumerStatefulWidget {
  BookDetailBody({Key? key}) : super(key: key);

  @override
  ConsumerState<BookDetailBody> createState() => _BookDetailBodyState();
}



class _BookDetailBodyState extends ConsumerState<BookDetailBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BookDetailCover(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                _buildCategory(),
                SizedBox(height: 20),
                _buildTitle(),
                SizedBox(height: 8),
                _buildAuthorStore(),
                SizedBox(height: 20),
                _buildPrice(),
                Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [MyTabBar(),]
                ),
                Divider(
                  thickness: 2,
                ),
                SizedBox(height: 15),
                _buildListContents(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Row _buildCategory() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colours.app_sub_darkgrey,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "# ${bookDetail.bigCategory}",
          style: TextStyle(
            fontSize: Dimens.font_sp14,
            color: Colours.app_sub_black,
          ),
        ),
      ),
      SizedBox(width: 10),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colours.app_sub_darkgrey,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          "# ${bookDetail.smallCategory}",
          style: TextStyle(
            fontSize: Dimens.font_sp14,
            color: Colours.app_sub_black,
          ),
        ),
      ),
    ],
  );
}

Row _buildTitle() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Text(
          "${bookDetail.title}",
          style: TextStyle(
            fontSize: Dimens.font_sp30,
            fontWeight: FontWeight.w700,
            color: Colours.app_sub_black,
          ),
        ),
      ),
    ],
  );
}

Row _buildAuthorStore() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "${bookDetail.author}",
        style: TextStyle(
          fontSize: Dimens.font_sp24,
          color: Colours.app_sub_black,
        ),
      ),
      SizedBox(width: 10),
      Text(
        "/ ${bookDetail.store}",
        style: TextStyle(
          fontSize: Dimens.font_sp24,
          color: Colours.app_sub_black,
        ),
      ),
    ],
  );
}

Row _buildPrice() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "소장가 ${bookDetail.price}원",
        style: TextStyle(
          fontSize: Dimens.font_sp20,
          color: Colours.app_sub_black,
        ),
      ),
    ],
  );
}


Widget _buildListContents(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "< 책 소개 >",
          style: TextStyle(
              color: Colours.app_sub_black,
              fontSize: Dimens.font_sp20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        Text(
          "${bookDetail.bookInfo}",
          style: TextStyle(
            color: Colours.app_sub_black,
            fontSize: Dimens.font_sp18,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 4,
        ),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "< 목차 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                bookContentList.length,
                (index) {
                  return Text(
                    '- ${bookContentList[index].toString()}',
                    style: TextStyle(
                      fontSize: Dimens.font_sp18,
                      color: Colours.app_sub_black,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "< 작가 정보 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "${bookDetail.author}",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "${bookDetail.authorInfo}",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp18,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 4,
            ),
            SizedBox(height: 15),
            Divider(
              thickness: 2,
            ),
            SizedBox(height: 15),
            Text(
              "< 리뷰 관리 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Column(
              children: List.generate(
                riewList.length,
                (index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: Colours.app_sub_grey,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              StarScore(score: riewList[index].stars),
                              Spacer(),
                              Text("${riewList[index].userId} "),
                              Text("|  ${riewList[index].writeTime}")
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(riewList[index].content),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15),
            Divider(
              thickness: 2,
            ),
            RivewWrite(),
          ],
        ),
      ],
    ),
  );
}
