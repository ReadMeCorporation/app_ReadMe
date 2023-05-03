import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/main_dto.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/provider/session_provider.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

final bookControllerProvider  = Provider<BookController>((ref) {
  return BookController(ref);
});

class BookController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;
  var isDuplication = false;

  BookController(this.ref);

  Future<void> refresh() async {
    // SessionUser sessionUser = ref.read(sessionProvider);
    // ref.read(bookDetailPageProvider.notifier).notifyInit(sessionUser.jwt!);
  }

  Future<void> pageSearch(BookSearchType type, int page) async {
    if (!isDuplication) {
      isDuplication = true;
      // 통신 할때 await
      // responseDTO.data = responseBookList
      // responseDTO.data.page.isLast = false
      ResponseDTO responseDTO =
          await BookRepository().searchMainListPage(page, type);
      MainDTO mainDTO = responseDTO.data;
      ref.read(mainPageProvider.notifier).pageSearch(type, mainDTO, page);
      isDuplication = false;
    }
  }
}
