import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';
import 'package:readme_app/dto/book_detail_dto/book_detail_dto.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/util/epub/epub_view.dart';

// 파일명
part 'book_viewer_page_view_model.freezed.dart';


@unfreezed
class BookMark with _$BookMark {
  factory BookMark(
  {
    required String title,
    required String link,
  }) = _BookMark;
}

@unfreezed
class BookViewerPageModel with _$BookViewerPageModel {
  factory BookViewerPageModel(
      {
        required String title,
        required String epubFilePath,
        required String coverFilePath,
        required int price,
        required bool isHeart,
        required bool isBookMark,
        required bool isShowAppBarAndBottomSheet,
        required double currentSliderValue,
        required double fontSize,
        required Color fontColor,
        required String fontFamily,
        required Color bgColor,
        TableUser? user,
        required EpubController epubReaderController,
        required List<BookMark> bookmarks,
      }) = _BookViewerPageModel;

}

class BookViewerPageViewModel extends StateNotifier<BookViewerPageModel?> {

  BookViewerPageViewModel(super.state);

  void notifyInit(BookDetailDTO book) async {
    BookViewerPageModel initBook = BookViewerPageModel(
      title: "",
      epubFilePath: "",
      coverFilePath: "",
      price: 0,
      isHeart: false,
      isBookMark: false,
      isShowAppBarAndBottomSheet: false,
      currentSliderValue: 0,
      fontSize: 0.0,
      fontColor: Colours.app_sub_black,
      fontFamily: "",
      bgColor: Colours.app_sub_white,
      user: null,
      epubReaderController: EpubController(document: EpubDocument.openUrl("https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookepub/40eae962-86bb-465a-9273-10467848c9b3-book3.epub")),
      bookmarks: [],
    );

    initBook.user = await MySqfliteInit.getUser();

    var epubController = EpubController(document: EpubDocument.openUrl(book.epubFile.fileUrl));
    initBook = initBook.copyWith(
        title: book.title,
        epubFilePath: book.epubFile.fileUrl,
        coverFilePath: book.coverFile.fileUrl,
        price: book.price,
        isHeart: book.isHeart,
        isBookMark: false,
        isShowAppBarAndBottomSheet: false,
        currentSliderValue: 100,
        fontSize: Dimens.font_sp18,
        fontColor: Colours.app_sub_black,
        fontFamily: "NanumGothic",
        bgColor: Colours.app_sub_white,
        user: initBook.user,
        epubReaderController: epubController,
        bookmarks: [],
    );
    state = initBook;
  }

  void goBookMark(String link) async {
    print("link : $link");
    state!.epubReaderController.gotoEpubCfi(link);
  }

  void addBookMark(String title, String link) async {
    print("link : $link");
    state = state!.copyWith(bookmarks: [...state!.bookmarks, BookMark(title: title, link: link)]);
  }

  void changeIsBookMark(value) async {
    state = state!.copyWith(isBookMark: value);
  }

  void changeIsShowAppBarAndBottomSheet(value) async {
    state = state!.copyWith(isShowAppBarAndBottomSheet: value);
  }

  void fontSizeUp() async {
    state = state!.copyWith(fontSize: state!.fontSize + 2.0);
  }

  void changeFontFamily(String value) async {
    state = state!.copyWith(fontFamily: value);
  }

  void fontSizeDown() async {
    state = state!.copyWith(fontSize: state!.fontSize - 2.0);
  }

  void bgColor(Color value) async {
    state = state!.copyWith(bgColor: value);
  }

  void bgColorWhite() async {
    state = state!.copyWith(bgColor: Colors.white, fontColor: Colours.app_sub_black);
  }

  void bgColorBlack() async {
    state = state!.copyWith(bgColor: Colours.app_sub_black, fontColor: Colors.white);
  }

  void bgColorMain() async {
    state = state!.copyWith(bgColor: Colours.app_main, fontColor: Colours.app_sub_black);
  }

  void bgColorGrey() async {
    state = state!.copyWith(bgColor: Colours.app_sub_grey, fontColor: Colours.app_sub_black);
  }
}

final bookViewerPageProvider = StateNotifierProvider.family.autoDispose<BookViewerPageViewModel, BookViewerPageModel?, BookDetailDTO>((ref, book) {
    return BookViewerPageViewModel(null)..notifyInit(book);
  },
);
