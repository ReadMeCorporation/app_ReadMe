import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/reviews/reviews.dart';
import 'package:readme_app/provider/session_provider.dart';

// 창고 관리자
final bookDetailPageProvider = StateNotifierProvider.autoDispose<BookDetailPageViewModel, BookDetailPageModel?>(
        (ref) {
  return BookDetailPageViewModel(null)..notifyInit();
},);

// 창고 데이터
class BookDetailPageModel {
  Book book;
  List<Reviews>? reviews;

  BookDetailPageModel({required this.book});
}

// 창고
class BookDetailPageViewModel extends StateNotifier<BookDetailPageModel?> {
  Ref ref;

  BookDetailPageViewModel(super.state, this.ref);

  void notifyInit(int id, String jwt) async {
    ResponseDTO responseDTO = await BookRepository().bookDetail(id, jwt);
    state = BookDetailPageModel(book: responseDTO.data);
  }


}
