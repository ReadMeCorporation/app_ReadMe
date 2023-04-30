import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {

  List<BookTile> getBookList(int page, String type) {
    // TODO: Size 10 고정으로 통신
    // Pageable 데이터 확인 필수 !
    return List.of([
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
  }


  MainPageModel mainResponse () {
    return MainPageModel(
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
  }



}
