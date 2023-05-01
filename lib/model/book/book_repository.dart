import 'package:readme_app/model/content_box_mock_data.dart';
import 'package:readme_app/view/page/main/main_page/main_page_view_model.dart';

class BookRepository {
  static final BookRepository _instance = BookRepository._single();

  factory BookRepository() {
    return _instance;
  }

  BookRepository._single();

  List<ContentBoxMockData> mockContentPageModel() {
    return List.of([
      ContentBoxMockData(
        path:
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/88ef810f-5e20-4ec9-a7f1-b59893da8768-test3.epub",
        imgPath:
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        title: "1984",
        author: "조지 오웰",
        store: "데이원",
        price: 15000,
        isHeart: true,
        star: 4.5,
      ),
      ContentBoxMockData(
        path:
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/88ef810f-5e20-4ec9-a7f1-b59893da8768-test3.epub",
        imgPath:
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        title: "스즈메의 문단속",
        author: "스즈메",
        store: "메즈스",
        price: 18000,
        isHeart: true,
        star: 3.5,
      ),
      ContentBoxMockData(
        path:
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/88ef810f-5e20-4ec9-a7f1-b59893da8768-test3.epub",
        imgPath:
        "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
        title: "물고기는 존재하지 않는다",
        author: "룰루 밀러",
        store: "샘숭",
        price: 20000,
        isHeart: true,
        star: 4.8,
      ),
    ]);
  }

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
          4.0),
      BookTile(
          1,
          "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
          "1984",
          "조지오웰2",
          "그린",
          15000,
          true,
          4.0),
      BookTile(
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

  MainPageModel mainResponse() {
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
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰2",
            "그린",
            15000,
            true,
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰3",
            "그린",
            15000,
            false,
            4.0),
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
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰2",
            "그린",
            15000,
            true,
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰3",
            "그린",
            15000,
            false,
            4.0),
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
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰2",
            "그린",
            15000,
            true,
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰3",
            "그린",
            15000,
            false,
            4.0),
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
            4.0),
        BookTile(
            1,
            "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/893f6a77-47be-452c-9b1a-148b79785e24-book1.png",
            "1984",
            "조지오웰2",
            "그린",
            15000,
            true,
            4.0),
        BookTile(
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
