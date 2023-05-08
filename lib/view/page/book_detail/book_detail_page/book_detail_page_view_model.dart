import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/dto/response_dto.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/reviews/reviews.dart';
import 'package:readme_app/provider/session_provider.dart';

// 창고 관리자
// final bookDetailPageProvider = StateNotifierProvider.autoDispose<BookDetailPageViewModel, BookDetailPageModel?>(
//         (ref) {
//   return BookDetailPageViewModel(null)..notifyInit();
// },);

// 창고 데이터
// @freezed
// class BookDetailPageModel with _$BookDetailPageModel {
//   const factory BookDetailPageModel({
//     required Book book,
//     required List<Reviews>? reviews
// }) = _BookDetailPageModel;
//
// }

// @unfreezed
// class BookDetailPageModel with _$BookDetailPageModel {
//   factory BookDetailPageModel({
//     required String title,
//     required String epubFilePath,
//     required String coverFilePath,
//     required int price,
//     required bool isHeart,
//     required String author,
//     required String businessName,
//     required String introduction,
//     required List<String> index,
//     required String authorInfo,
//     required List<ReviewMockData> reviews,
//     TableUser? user,
//   }) = _BookDetailPageModel;
// }

// class BookDetailPageViewModel extends StateNotifier<BookDetailPageModel?> {
//   BookDetailPageViewModel(super.state);
//
//   void notifyInit(Map<String, dynamic> bookDetailData) async {
//     BookDetailPageModel initBookDetail = BookDetailPageModel(
//       title: "",
//       epubFilePath: "",
//       coverFilePath: "",
//       price: 0,
//       isHeart: false,
//       author: "",
//       businessName: "",
//       introduction: "",
//       index: [],
//       authorInfo: "",
//       reviews: [],
//       user: null,
//     );
//
//     initBookDetail.user = await MySqfliteInit.getUser();
//     print(initBookDetail.user?.id ?? 0);
//
//     BookDetailMockData2 bookDetail = bookDetailData["bookDetail"];
//
//     print("bookDetail.epubFilePath: ${bookDetail.epubFilePath}");
//     initBookDetail = initBookDetail.copyWith(
//       title: bookDetail.title,
//       epubFilePath: bookDetail.epubFilePath,
//       coverFilePath: bookDetail.coverFilePath,
//       price: bookDetail.price,
//       isHeart: bookDetail.isHeart,
//       author: bookDetail.author,
//       businessName: bookDetail.author,
//       introduction: bookDetail.author,
//       index: bookDetail.indexList,
//       authorInfo: bookDetail.author,
//       reviews: [],
//       user: initBookDetail.user,
//     );
//
//     state = initBookDetail;
//   }
//
//
//   class BookDetailPageModel {
//   Book book;
//   List<Reviews>? reviews;
//   BookDetailPageModel({required this.book});
// }


// void changeIsShowAppBarAndBottomSheet(value) async {
//   state = state!.copyWith(isShowAppBarAndBottomSheet: value);
// }
// }
//
// final bookDetailPageProvider = StateNotifierProvider.family.autoDispose<
//     BookDetailPageViewModel, BookDetailPageModel?, Map<String, dynamic>>(
//       (ref, bookDetailData) {
//     return BookDetailPageViewModel(null)..notifyInit(bookDetailData);
//   },
// );


// 창고
// class BookDetailPageViewModel extends StateNotifier<BookDetailPageModel?> {
//
//   Ref ref;
//
//   BookDetailPageViewModel(super.state, this.ref);
//
//   void notifyInit(int id, String jwt) async {
//     ResponseDTO responseDTO = await BookRepository().bookDetail(id, jwt);
//     state = BookDetailPageModel(book: responseDTO.data);
//   }
//
//
// }
