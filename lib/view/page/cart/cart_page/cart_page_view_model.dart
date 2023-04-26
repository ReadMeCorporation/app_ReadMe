import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/provider/session_provider.dart';


// 저장소
class CartPageViewModel extends StateNotifier<CartPageModel?> {
  CartPageViewModel(super.state);

  void notifyRemove(int id) {
    List<Book> books = state!.books;
    List<Book> newBooks = books.where((element) => element.id != id).toList();
    state = CartPageModel(books: newBooks);
  }
}

// 관리할 데이터
class CartPageModel {
  List<Book> books;
  CartPageModel({required this.books});
}

// 관리
final CartPageProvider = StateNotifierProvider<CartPageViewModel,
    CartPageModel?>((ref) {
      SessionUser sessionUser = ref.read(sessionProvider);
      return CartPageViewModel(null);
});