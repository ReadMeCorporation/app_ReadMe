import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/book_banner/banner.dart';
import 'package:readme_app/model/file_info/file_info.dart';
import 'package:readme_app/dto/mainDTO.dart';

enum BookSearchType { total, best, recommend, latest }

// Controller에서 값을 받은뒤 reponse를 화면 model로 변경하는 작업 (로직)
class MainPageViewModel extends StateNotifier<MainPageModel?> {
  MainPageViewModel(super.state);

  var mainPageModel = MainPageModel([], [], [], [], []);

  // 메인이 total이니까
  void notifyInit() async {
    // 통신을 하고 pageViewModel로 데이터 전송
    // ResponseDTO responseDTO = await PostRepository().fetchUpdate(sessionUser.jwt!, id, postUpdateReqDTO);
    // responseDTO.data = mockMainPageModel
    // responseDTO.data.page.isLast = false
    // ref.read(mainPageProvider.notifier).notifyInit(mockMainPageModel, false);
    // Navigator.pop(mContext!);
    ResponseDTO totalResponse =
        await BookRepository().mainList(BookSearchType.total);
    // ResponseDTO bestResponse =
    //     await BookRepository().mainList(BookSearchType.best);
    // ResponseDTO recommendResponse =
    //     await BookRepository().mainList(BookSearchType.recommend);
    // ResponseDTO latestResponse =
    //     await BookRepository().mainList(BookSearchType.latest);
    // ResponseDTO bannerList = await BookRepository().getBanner();

    print(totalResponse.data.toString());
    print(totalResponse.code);
    MainDTO totalMainDTO = totalResponse.data;
    // MainDTO bestMainDTO = bestResponse.data;
    // MainDTO recommendMainDTO = recommendResponse.data;
    // MainDTO latestMainDTO = latestResponse.data;
    // MainDTO bannerDTO = bannerList.data;
    // List<String> banners = [];
    //
    // // bannerDTO.content.forEach((element) => banners.addAll(element.fileDTO[0].fileUrl));
    // bannerDTO.content.forEach((element) => banners.addAll(element.fileDTO[1].fileUrl as Iterable<String>));

    // List<String> bannerUrl = bannerDTO.content
    //     .forEach((e) => e.fileDTO.forEach((element) => element.fileUrl))
    //     .toString();

    // mainPageModel.totalBooks.addAll(totalMainDTO?.content);
    // mainPageModel.bestBooks.addAll(bestMainDTO.content);
    // mainPageModel.recommendBooks.addAll(recommendMainDTO.content);
    // mainPageModel.latestBooks.addAll(latestMainDTO.content);
    //
    // mainPageModel.bookBanners.addAll(banners);

    mainPageModel.isTotalLast = totalMainDTO.last;
    // mainPageModel.isBestLast = bestMainDTO.last;
    // mainPageModel.isRecommendLast = recommendMainDTO.last;
    // mainPageModel.isLatestLast = latestMainDTO.last;

    state = mainPageModel;
  }

  // 최초 조회 시
  void search(BookSearchType type, MainDTO mainDTO) {
    // response 결과
    if (mainDTO.first && type == BookSearchType.best) {
      // mainPageModel.bestBooks.addAll(mainDTO.content);
      mainPageModel.isTotalLast = mainDTO.last;
    } else if (mainDTO.first && type == BookSearchType.recommend) {
      // mainPageModel.recommendBooks.addAll(mainDTO.content);
      mainPageModel.isRecommendLast = mainDTO.last;
    } else if (mainDTO.first && type == BookSearchType.latest) {
      // mainPageModel.latestBooks.addAll(mainDTO.content);
      mainPageModel.isLatestLast = mainDTO.last;
    }
  }

  void pageSearch(BookSearchType type, MainDTO mainDTO, int page) {
    if (type == BookSearchType.total) {
      mainPageModel.totalPage = page;
    } else if (type == BookSearchType.best) {
      mainPageModel.bestPage = page;
    } else if (type == BookSearchType.recommend) {
      mainPageModel.recommendPage = page;
    } else if (type == BookSearchType.latest) {
      mainPageModel.latestPage = page;
    }

    // response 결과
    if (type == BookSearchType.total) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);

      final List<Book> totalBooks = [...state!.totalBooks];
      // totalBooks.addAll(mainDTO.content);

      newObject.totalBooks = totalBooks;
      newObject.bestBooks = state!.bestBooks;
      newObject.recommendBooks = state!.recommendBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, mainDTO.last, state!.isBestLast,
          state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.best) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<Book> bestBooks = [...state!.bestBooks];
      // bestBooks.addAll(mainDTO.content);

      newObject.bestBooks = bestBooks;
      newObject.totalBooks = state!.totalBooks;
      newObject.recommendBooks = state!.recommendBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, state!.isTotalLast, mainDTO.last,
          state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.recommend) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<Book> recommendBooks = [...state!.recommendBooks];
      // recommendBooks.addAll(mainDTO.content);

      newObject.recommendBooks = recommendBooks;
      newObject.totalBooks = state!.totalBooks;
      newObject.bestBooks = state!.bestBooks;
      newObject.latestBooks = state!.latestBooks;

      changeIsLast(newObject, state!.isTotalLast, state!.isBestLast,
          mainDTO.last, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.latest) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<Book> latestBooks = [...state!.latestBooks];
      // latestBooks.addAll(mainDTO.content);

      newObject.latestBooks = latestBooks;
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
  var totalPage = 1;
  var bestPage = 1;
  var recommendPage = 1;
  var latestPage = 1;

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
