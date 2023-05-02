import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/dto/mainDTO.dart';
import 'package:readme_app/model/file_info/file_dto.dart';

enum BookSearchType { total, best, recommends, latest }

// Controller에서 값을 받은뒤 reponse를 화면 model로 변경하는 작업 (로직)
class MainPageViewModel extends StateNotifier<MainPageModel?> {
  MainPageViewModel(super.state);

  var mainPageModel = MainPageModel([], [], [], [], []);

  void notifyInit() async {
    ResponseDTO totalResponse = await BookRepository().mainList(BookSearchType.total);
    ResponseDTO bestResponse = await BookRepository().mainList(BookSearchType.best);
    ResponseDTO recommendResponse = await BookRepository().mainList(BookSearchType.recommends);
    // ResponseDTO latestResponse = await BookRepository().mainList(BookSearchType.latest);
    ResponseDTO bannerList = await BookRepository().getBanner();

    MainDTO totalMainDTO = totalResponse.data;
    MainDTO bestMainDTO = bestResponse.data;
    MainDTO recommendMainDTO = recommendResponse.data;
    MainDTO latestMainDTO = totalResponse.data;
    MainDTO bannerDTO = bannerList.data;

    // Banner Start // Why pageable ?
    List<String> banners = [];
    bannerDTO.content?.forEach((element) => banners.add(element.coverFile.fileUrl));
    mainPageModel.bookBanners.addAll(banners);
    print(bannerDTO.content.toString() );
    // List<FileDTO>? files = bannerDTO.content?.expand((e) => [e.coverFile]).toList();
    // if (files != null && files.isNotEmpty) {
    //   banners.addAll(files.map((e) => e.fileUrl));
    //   mainPageModel.bookBanners.addAll(banners);
    // }

    // Banner End

    // Total Start
    List<Book>? totalContent = totalMainDTO.content;
    if (totalContent != null && totalContent.isNotEmpty) {
      mainPageModel.totalBooks.addAll(totalContent);
      mainPageModel.isTotalLast = totalMainDTO.last;
    }
    // Total End

    // best Start
    List<Book>? bestContent = bestMainDTO.content;
    if (bestContent != null && bestContent.isNotEmpty) {
      mainPageModel.bestBooks.addAll(bestContent);
      mainPageModel.isBestLast = bestMainDTO.last;
    }
    // best End

    // recommend Start
    List<Book>? recommendContent = recommendMainDTO.content;
    if (recommendContent != null && recommendContent.isNotEmpty) {
      mainPageModel.recommendBooks.addAll(recommendContent);
      mainPageModel.isRecommendLast = recommendMainDTO.last;
    }
    // recommen End

    // latest Start
    List<Book>? latestContent = latestMainDTO.content;
    if (latestContent != null && latestContent.isNotEmpty) {
      mainPageModel.latestBooks.addAll(latestContent);
      mainPageModel.isLatestLast = latestMainDTO.last;
    }
    // latest End

    state = mainPageModel;
  }

  void pageSearch(BookSearchType type, MainDTO mainDTO, int page) {
    if (type == BookSearchType.total) {
      mainPageModel.totalPage = page;
    } else if (type == BookSearchType.best) {
      mainPageModel.bestPage = page;
    } else if (type == BookSearchType.recommends) {
      mainPageModel.recommendPage = page;
    } else if (type == BookSearchType.latest) {
      mainPageModel.latestPage = page;
    }

    // response 결과
    if (type == BookSearchType.total) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);


      List<Book>? totalBooks = mainDTO.content;
      final List<Book> newTotalBooks = [...state!.totalBooks];
      newTotalBooks.addAll(totalBooks ?? []);
      // totalBooks.addAll(mainDTO.content);

      newObject.totalBooks = newTotalBooks;
      newObject.bestBooks = state!.bestBooks;
      newObject.recommendBooks = state!.recommendBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, mainDTO.last, state!.isBestLast,
          state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;

    } else if (type == BookSearchType.best) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);

      List<Book>? bestBooks = mainDTO.content;
      final List<Book> newBestBooks = [...state!.bestBooks];
      newBestBooks.addAll(bestBooks ?? []);
      // bestBooks.addAll(mainDTO.content);

      newObject.bestBooks = newBestBooks;
      newObject.totalBooks = state!.totalBooks;
      newObject.recommendBooks = state!.recommendBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, state!.isTotalLast, mainDTO.last,
          state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.recommends) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);


      List<Book>? recommendBooks = mainDTO.content;
      final List<Book> newRecommendBooks = [...state!.recommendBooks];
      newRecommendBooks.addAll(recommendBooks ?? []);
      // recommendBooks.addAll(mainDTO.content);

      newObject.recommendBooks = newRecommendBooks;
      newObject.totalBooks = state!.totalBooks;
      newObject.bestBooks = state!.bestBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, state!.isTotalLast, state!.isBestLast,
          mainDTO.last, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;

    } else if (type == BookSearchType.latest) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);

      List<Book>? latestBooks = mainDTO.content;
      final List<Book> newLatestBooks = [...state!.latestBooks];
      newLatestBooks.addAll(latestBooks ?? []);
      // latestBooks.addAll(mainDTO.content);

      newObject.latestBooks = newLatestBooks;
      newObject.totalBooks = state!.totalBooks;
      newObject.bestBooks = state!.bestBooks;
      newObject.recommendBooks = state!.recommendBooks;

      changeIsLast(newObject, state!.isTotalLast, state!.isBestLast,
          state!.isRecommendLast, mainDTO.last);

      changeCommon(newObject);
      state = newObject;
    }
  }

  void changeCommon(MainPageModel newObject) {
    newObject.latestPage = state!.latestPage;
    newObject.bestPage = state!.bestPage;
    newObject.recommendPage = state!.recommendPage;
    newObject.totalPage = state!.totalPage;
    newObject.bookBanners = state!.bookBanners;
  }

  void changeIsLast(MainPageModel newObject, bool isTotalLast, bool isBestLast,
      bool isRecommendLast, bool isLatestLast) {
    newObject.isLatestLast = isLatestLast;
    newObject.isTotalLast = isTotalLast;
    newObject.isBestLast = isBestLast;
    newObject.isRecommendLast = isRecommendLast;
  }
}

final mainPageProvider =
    StateNotifierProvider.autoDispose<MainPageViewModel, MainPageModel?>(
  (ref) {
    return MainPageViewModel(null)..notifyInit();
  },
);

class MainPageModel {
  var totalPage = 0;
  var bestPage = 0;
  var recommendPage = 0;
  var latestPage = 0;

  var isTotalLast = false;
  var isBestLast = false;
  var isRecommendLast = false;
  var isLatestLast = false;

  List<String> bookBanners = [];
  List<Book> totalBooks = [];
  List<Book> bestBooks = [];
  List<Book> recommendBooks = [];
  List<Book> latestBooks = [];

  MainPageModel(this.bookBanners, this.totalBooks, this.bestBooks,
      this.recommendBooks, this.latestBooks);
}
