import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/provider/session_provider.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

final bookControllerProvider = Provider<BookController>((ref) {
  return BookController(ref);
});

// 화면 이동 + repository 조회
class BookController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  var isDuplication = false;

  BookController(this.ref);

  Future<void> search(BookSearchType type) async {
    if (!isDuplication) {
      isDuplication = true;
      // 통신을 하고 pageViewModel로 데이터 전송
      // 통신을 하고 결과값
      // 통신 할때 await
      // responseDTO.data = responseBookList
      // responseDTO.data.page.isLast = false
      ref.read(mainPageProvider.notifier).search(type, responseBookList, false);
      isDuplication = false;
    }
  }


  Future<void> pageSearch(
      BookSearchType type,
      int page
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      // 통신 할때 await
      // responseDTO.data = responseBookList
      // responseDTO.data.page.isLast = false
      ref.read(mainPageProvider.notifier).pageSearch(type, responseBookList, true, page);
      isDuplication = false;
    }
  }

}





























