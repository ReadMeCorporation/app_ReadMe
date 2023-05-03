import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/reviews/reviews.dart';
import 'package:readme_app/view/page/book_detail/book_detail_page/book_detail_page_view_model.dart';

class BookDetailCover extends ConsumerWidget {
  BookDetailCover({Key? key}) : super(key: key);

  Book? useBook = null;
  List<Reviews>? reviews = [];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    BookDetailPageModel? model = ref.watch(bookDetailPageProvider);

    if (model != null) {
      useBook = model!.book;
      reviews = model!.reviews;
    }

    return Stack(
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: CachedNetworkImage(
            alignment: Alignment.center,
            height: 470,
            width: double.infinity,
            placeholder: (context, url) => const CircularProgressIndicator(),
            imageUrl: '${useBook?.coverFile.fileUrl}',
            fit: BoxFit.fill,
          ),
        ),
        Container(
          height: 500,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(75),
            child: CachedNetworkImage(
              alignment: Alignment.center,
              placeholder: (context, url) => const CircularProgressIndicator(),
              imageUrl:
                  '${useBook?.coverFile.fileUrl}',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 280,
          top: 450,
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/viewer");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colours.app_sub_white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "미리보기",
                style: TextStyle(
                  fontSize: Dimens.font_sp16,
                  color: Colours.app_sub_white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
