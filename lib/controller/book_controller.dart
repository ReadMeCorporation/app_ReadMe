import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/mainDTO.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
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

  Future<void> pageSearch(
      BookSearchType type,
      int page
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      // 통신 할때 await
      // responseDTO.data = responseBookList
      // responseDTO.data.page.isLast = false
      ResponseDTO responseDTO =  await BookRepository().searchMainListPage(page, type);
      MainDTO mainDTO = responseDTO.data;
      ref.read(mainPageProvider.notifier).pageSearch(type, mainDTO, page);
      isDuplication = false;
    }
  }

}
