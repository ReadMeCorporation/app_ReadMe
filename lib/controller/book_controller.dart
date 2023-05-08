import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/main_dto/main_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/view/page/category/category_page/category_page_view_model.dart';
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


  Future<void> pageSearch(
      String name,
      int page,
      String requestName
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      ResponseDTO responseDTO =  await BookRepository().searchMainListPage(page, requestName);

        ref.read(mainPageProvider.notifier).pageSearch(name, responseDTO, page);
        isDuplication = false;


    }
  }


  Future<void> pageCategorySearch(
      int page, int bigCategory,
      {int? smallCategory}
  ) async {
    if (!isDuplication) {
      isDuplication = true;
      // 통신 할때 await
      // responseDTO.data = responseBookList
      // responseDTO.data.page.isLast = false
      ResponseDTO responseDTO =  await BookRepository().searchMainListPage(page, "all", bigCategory: bigCategory, smallCategory: smallCategory);

      MainDTO mainDTO = responseDTO.data;
      ref.read(categoryPageProvider.notifier).pageSearch(mainDTO, page, bigCategory, smallCategory: smallCategory);
      isDuplication = false;


    }
  }

}
