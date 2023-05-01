import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/content_box_mock_data.dart';

enum ContentBoxSearchType{
  recently, scrap, shoppingList, bookmark
}

final contentBoxPageProvider = StateNotifierProvider.autoDispose<
    ContentBoxPageViewModel, ContentBoxPageModel?>((ref) {
  Logger().d("bookViewerPageProvider");
  return ContentBoxPageViewModel(null)..notifyInit();
});

class ContentBoxPageModel {
  var recentlyPage = 1;
  var scrapPage = 1;
  var shoppingListPage = 1;
  var bookmarkPage = 1;

  var isRecentlyLast = false;
  var isScrapLast = true;
  var isShoppingListLast = false;
  var isBookmarkLast = false;

  List<ContentBoxMockData> recentlyBookTiles = [];
  List<ContentBoxMockData> scrapBookTiles = [];
  List<ContentBoxMockData> shoppingListBookTiles = [];
  List<ContentBoxMockData> bookmarkBookTiles = [];

  ContentBoxPageModel(this.recentlyBookTiles, this.scrapBookTiles,
      this.shoppingListBookTiles, this.bookmarkBookTiles);
}


class ContentBoxPageViewModel extends StateNotifier<ContentBoxPageModel?> {
  ContentBoxPageViewModel(super.state);

  var contentBoxPageModel = ContentBoxPageModel( [], [], [], []);

  void notifyInit() async {
    List<ContentBoxMockData> response = await BookRepository().mockContentPageModel();
    contentBoxPageModel.recentlyBookTiles.addAll(response);
    contentBoxPageModel.isRecentlyLast = false;
    state = contentBoxPageModel;
  }

  // 최초 조회 시
  void searchContentBox (ContentBoxSearchType type, List<ContentBoxMockData> data, bool isLast) {
    // response 결과
    if (contentBoxPageModel.scrapBookTiles.isEmpty && type == ContentBoxSearchType.scrap) {
      contentBoxPageModel.scrapBookTiles.addAll(data);
      contentBoxPageModel.isScrapLast = isLast;
    } else if (contentBoxPageModel.shoppingListBookTiles.isEmpty && type == ContentBoxSearchType.shoppingList) {
      contentBoxPageModel.shoppingListBookTiles.addAll(data);
      contentBoxPageModel.isShoppingListLast = isLast;
    } else if (contentBoxPageModel.bookmarkBookTiles.isEmpty && type == ContentBoxSearchType.bookmark) {
      contentBoxPageModel.bookmarkBookTiles.addAll(data);
      contentBoxPageModel.isBookmarkLast = isLast;
    }
  }
}

