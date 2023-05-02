import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/dto/mainDTO.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// 파일명
part 'main_page_view_model.freezed.dart';

enum BookSearchType { total, best, recommends, latest }

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
        latestBooks: []);

    ResponseDTO totalResponse =
        await BookRepository().mainList(BookSearchType.total);
    ResponseDTO bestResponse =
        await BookRepository().mainList(BookSearchType.best);
    ResponseDTO recommendResponse =
        await BookRepository().mainList(BookSearchType.recommends);
    // ResponseDTO latestResponse = await BookRepository().mainList(BookSearchType.latest);
    ResponseDTO bannerList = await BookRepository().getBanner();

    MainDTO totalMainDTO = totalResponse.data;
    MainDTO bestMainDTO = bestResponse.data;
    MainDTO recommendMainDTO = recommendResponse.data;
    MainDTO latestMainDTO = totalResponse.data;
    MainDTO bannerDTO = bannerList.data;

    // Banner Start // Why pageable ?
    List<String> banners = [];
    bannerDTO.content
        ?.forEach((element) => banners.add(element.coverFile.fileUrl));
    mainPageModel.bookBanners.addAll(banners);
    // Banner End

    // Total Start
    List<Book>? totalContent = totalMainDTO.content;
    if (totalContent != null && totalContent.isNotEmpty) {
      mainPageModel.totalBooks.addAll(totalContent);
      mainPageModel = mainPageModel.copyWith(isTotalLast: totalMainDTO.last);
    }
    // Total End

    // best Start
    List<Book>? bestContent = bestMainDTO.content;
    if (bestContent != null && bestContent.isNotEmpty) {
      mainPageModel.bestBooks.addAll(bestContent);
      mainPageModel = mainPageModel.copyWith(isBestLast: bestMainDTO.last);
    }
    // best End

    // recommend Start
    List<Book>? recommendContent = recommendMainDTO.content;
    if (recommendContent != null && recommendContent.isNotEmpty) {
      mainPageModel.recommendBooks.addAll(recommendContent);
      mainPageModel =
          mainPageModel.copyWith(isRecommendLast: recommendMainDTO.last);
    }
    // recommen End

    // latest Start
    List<Book>? latestContent = latestMainDTO.content;
    if (latestContent != null && latestContent.isNotEmpty) {
      mainPageModel.latestBooks.addAll(latestContent);
      mainPageModel = mainPageModel.copyWith(isLatestLast: latestMainDTO.last);
    }
    // latest End

    state = mainPageModel;
  }

  void pageSearch(BookSearchType type, MainDTO mainDTO, int page) {
    if (type == BookSearchType.total) {
      // TODO 물어보기
      // List<Book>? totalBooks = mainDTO.content;
      // List<Book> newTotalBooks = [...state!.totalBooks];
      // newTotalBooks.addAll(totalBooks as List<Book>);
      state = state!.copyWith(
          totalBooks: mainDTO.content as List<Book>,
          isTotalLast: mainDTO.last,
          totalPage: page);

    } else if (type == BookSearchType.best) {
      state = state!.copyWith(
          bestBooks : mainDTO.content as List<Book> , isBestLast: mainDTO.last, bestPage: page);

    } else if (type == BookSearchType.recommends) {
      state = state!.copyWith(
          recommendBooks: mainDTO.content as List<Book> , isRecommendLast: mainDTO.last, recommendPage: page);

    } else if (type == BookSearchType.latest) {
      state = state!.copyWith(
          latestBooks : mainDTO.content as List<Book>, isLatestLast: mainDTO.last, latestPage: page);
    }
  }
}

final mainPageProvider =
    StateNotifierProvider.autoDispose<MainPageViewModel, MainPageModel?>(
  (ref) {
    return MainPageViewModel(null)..notifyInit();
  },
);

@freezed
class MainPageModel with _$MainPageModel {
  const factory MainPageModel({
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
  }) = _MainPageModel;
}
