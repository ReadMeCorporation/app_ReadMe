import 'package:flutter_riverpod/flutter_riverpod.dart';

enum BookSearchType{
  total, best, recommend, latest
}

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
    var data = mockMainPageModel;

    mainPageModel.bookBanners.addAll(data.bookBanners);
    mainPageModel.totalBookTiles.addAll(data.totalBookTiles);
    mainPageModel.isTotalLast = false;
    state = mainPageModel;
  }

  // 최초 조회 시
  void search (BookSearchType type, List<BookTile> data, bool isLast) {
    // response 결과
    if (mainPageModel.bestBookTiles.isEmpty && type == BookSearchType.best) {
      mainPageModel.bestBookTiles.addAll(data);
      mainPageModel.isTotalLast = isLast;
    } else if (mainPageModel.recommendBookTiles.isEmpty && type == BookSearchType.recommend) {
      mainPageModel.recommendBookTiles.addAll(data);
      mainPageModel.isRecommendLast = isLast;
    } else if (mainPageModel.latestBookTiles.isEmpty && type == BookSearchType.latest) {
      mainPageModel.latestBookTiles.addAll(data);
      mainPageModel.isLatestLast = isLast;
    }
  }

  void pageSearch (
      BookSearchType type,
      List<BookTile> data,
      bool isLast,
      int page
  ) {
    if (type == BookSearchType.total) {
      mainPageModel.totalPage = page;
    } else if (type == BookSearchType.best) {
      mainPageModel.bestPage = page;
    } else if (type == BookSearchType.recommend) {
      mainPageModel.recommendPage = page;
    } else  if (type == BookSearchType.latest) {
      mainPageModel.latestPage= page;
    }

    // response 결과
    if (type == BookSearchType.total) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<BookTile> bookTiles = [...state!.totalBookTiles];
      bookTiles.addAll(data);

      newObject.totalBookTiles = bookTiles;
      newObject.bestBookTiles = state!.bestBookTiles;
      newObject.recommendBookTiles = state!.recommendBookTiles;
      newObject.latestBookTiles = state!.latestBookTiles;

      changeIsLast(newObject, isLast, state!.isBestLast, state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.best) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<BookTile> bookTiles = [...state!.bestBookTiles];
      bookTiles.addAll(data);

      newObject.bestBookTiles = bookTiles;
      newObject.totalBookTiles     = state!.totalBookTiles;
      newObject.recommendBookTiles = state!.recommendBookTiles;
      newObject.latestBookTiles    = state!.latestBookTiles;

      changeIsLast(newObject, state!.isTotalLast, isLast, state!.isRecommendLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.recommend) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<BookTile> bookTiles = [...state!.recommendBookTiles];
      bookTiles.addAll(data);

      newObject.recommendBookTiles = bookTiles;
      newObject.totalBookTiles = state!.totalBookTiles;
      newObject.bestBookTiles = state!.bestBookTiles;
      newObject.latestBookTiles = state!.latestBookTiles;

      changeIsLast(newObject, state!.isTotalLast, state!.isBestLast, isLast, state!.isLatestLast);
      changeCommon(newObject);
      state = newObject;
    } else if (type == BookSearchType.latest) {
      final MainPageModel newObject = MainPageModel([], [], [], [], []);
      final List<BookTile> bookTiles = [...state!.latestBookTiles];
      bookTiles.addAll(data);

      newObject.latestBookTiles = bookTiles;
      newObject.totalBookTiles = state!.totalBookTiles;
      newObject.bestBookTiles = state!.bestBookTiles;
      newObject.recommendBookTiles = state!.recommendBookTiles;

      changeIsLast(newObject, state!.isTotalLast, state!.isBestLast, state!.isRecommendLast, isLast);
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

  void changeIsLast(MainPageModel newObject, bool isTotalLast, bool isBestLast, bool isRecommendLast, bool isLatestLast) {
    newObject.isLatestLast = isLatestLast;
    newObject.isTotalLast = isTotalLast;
    newObject.isBestLast = isBestLast;
    newObject.isRecommendLast = isRecommendLast;
  }
}


final mainPageProvider  = StateNotifierProvider.autoDispose<MainPageViewModel, MainPageModel?> ((ref) {
    return  MainPageViewModel(null)..notifyInit();
  },
);


class MainPageModel {
  var totalPage = 1;
  var bestPage = 1;
  var recommendPage = 1;
  var latestPage = 1;

  var isTotalLast = false;
  var isBestLast = true;
  var isRecommendLast = false;
  var isLatestLast = false;

  List<BookBanner> bookBanners = [];
  List<BookTile> totalBookTiles = [];
  List<BookTile> bestBookTiles = [];
  List<BookTile> recommendBookTiles = [];
  List<BookTile> latestBookTiles = [];

  MainPageModel(this.bookBanners, this.totalBookTiles, this.bestBookTiles,
      this.recommendBookTiles, this.latestBookTiles);
}

class BookBanner {
  String path;
  BookBanner(this.path);
}

class BookTile {
  int id;
  String path;
  String title;
  String author;
  String store;
  int price;
  bool isHart;
  double star;

  BookTile(this.id, this.path, this.title, this.author, this.store, this.price, this.isHart,
      this.star);
}










//

MainPageModel mockMainPageModel = MainPageModel(
  List.of([
    BookBanner(
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png"),
    BookBanner(
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png"),
    BookBanner(
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png")
  ]),
  List.of([
    BookTile(
        1,
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        "1984",
        "조지오웰",
        "그린",
        15000,
        false,
        4.0),BookTile(
        1,
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        "1984",
        "조지오웰2",
        "그린",
        15000,
        true,
        4.0),BookTile(
        1,
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        "1984",
        "조지오웰3",
        "그린",
        15000,
        false,
        4.0),
  ]),  List.of([
  BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰",
      "그린",
      15000,
      false,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰2",
      "그린",
      15000,
      true,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰3",
      "그린",
      15000,
      false,
      4.0),
]),  List.of([
  BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰",
      "그린",
      15000,
      false,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰2",
      "그린",
      15000,
      true,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰3",
      "그린",
      15000,
      false,
      4.0),
]),  List.of([
  BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰",
      "그린",
      15000,
      false,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰2",
      "그린",
      15000,
      true,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰3",
      "그린",
      15000,
      false,
      4.0),
]),
);


List<BookTile> responseBookList = List.of([
  BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰",
      "그린",
      15000,
      false,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰2",
      "그린",
      15000,
      true,
      4.0),BookTile(
      1,
      "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
      "1984",
      "조지오웰3",
      "그린",
      15000,
      false,
      4.0),
]);