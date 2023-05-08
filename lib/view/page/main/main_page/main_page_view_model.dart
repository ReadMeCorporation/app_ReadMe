import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_main_tab.dart';
import 'package:readme_app/view/components/custom_dialog.dart';


// 파일명
part 'main_page_view_model.freezed.dart';


// Controller에서 값을 받은뒤 reponse를 화면 model로 변경하는 작업 (로직)
class MainPageViewModel extends StateNotifier<MainPageModel?> {
  MainPageViewModel(super.state);

  void notifyInit() async {
    MainPageModel mainPageModel = MainPageModel(
        totalPage: 0,
        bestPage: 0,
        recommendPage: 0,
        latestPage: 0,
        isTotalLast: false,
        isBestLast: false,
        isRecommendLast: false,
        isLatestLast: false,
        bookBanners: [],
        totalBooks: [],
        bestBooks: [],
        recommendBooks: [],
        latestBooks: [],
        mainTabs: []
    );

    // Book Start
    List<TableMainTab> mainTabs = await MySqfliteInit.getMainTabs();
    mainPageModel = mainPageModel.copyWith(mainTabs: mainTabs);

    for (var mainTab in mainTabs) {
      var response = await BookRepository().mainList(mainTab.requestName);
      MainDTO data = response.data;
      List<Book>? contentList = data.content;

      if (contentList.isNotEmpty) {
        if (mainTab.name == "전체") {

          // TODO 나중에 추가 예정 Banner Start
          List<String> banners = [];
          for (var element in contentList) {
            banners.add(element.coverFile.fileUrl);
          }
          mainPageModel.bookBanners.addAll(banners);
          // Banner End

          mainPageModel.totalBooks.addAll(contentList);
          mainPageModel = mainPageModel.copyWith(isTotalLast: data.last);
        } else if (mainTab.name == "베스트셀러") {
          mainPageModel.bestBooks.addAll(contentList);
          mainPageModel = mainPageModel.copyWith(isBestLast: data.last);
        } else if (mainTab.name == "추천") {
          mainPageModel.recommendBooks.addAll(contentList);
          mainPageModel = mainPageModel.copyWith(isRecommendLast: data.last);
        } else if (mainTab.name == "신간") {
          mainPageModel.latestBooks.addAll(contentList);
          mainPageModel = mainPageModel.copyWith(isLatestLast: data.last);
        }
      }
    }

    state = mainPageModel;
    // Book End
  }

  void pageSearch(String name, ResponseDTO responseDTO, int page) {
    if(responseDTO.code ==1) {
      List<Book> bookList = responseDTO.data.content;
      if (name == "전체") {
        List<Book> newTotalBooks = [...state!.totalBooks];
        newTotalBooks.addAll(bookList);
        state = state!.copyWith(totalBooks: newTotalBooks, isTotalLast: responseDTO.data.last,  totalPage: page);
      } else if (name == "베스트셀러") {
        List<Book> newBestBooks = [...state!.bestBooks];
        newBestBooks.addAll(bookList);
        state = state!.copyWith( bestBooks : newBestBooks , isBestLast: responseDTO.data.last, bestPage: page);
      } else if (name ==  "추천") {
        List<Book> newRecommendsBooks = [...state!.recommendBooks];
        newRecommendsBooks.addAll(bookList);
        state = state!.copyWith( recommendBooks:newRecommendsBooks , isRecommendLast: responseDTO.data.last, recommendPage: page);
      } else if (name ==  "신간") {
        List<Book> newLatestBooks = [...state!.latestBooks];
        newLatestBooks.addAll(bookList);
        state = state!.copyWith( latestBooks : newLatestBooks, isLatestLast: responseDTO.data.last, latestPage: page);
      }
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }

  }
}

final mainPageProvider =
    StateNotifierProvider.autoDispose<MainPageViewModel, MainPageModel?>(
  (ref) {
    return MainPageViewModel(null)..notifyInit();
  },
);

@unfreezed
class MainPageModel with _$MainPageModel {
   factory MainPageModel({
    required int totalPage,
    required int bestPage,
    required int recommendPage,
    required int latestPage,
    required bool isTotalLast,
    required bool isBestLast,
    required bool isRecommendLast,
    required bool isLatestLast,
    required List<String> bookBanners,
    required List<Book> totalBooks,
    required List<Book> bestBooks,
    required List<Book> recommendBooks,
    required List<Book> latestBooks,
     required List<TableMainTab> mainTabs,
  }) = _MainPageModel;
}
