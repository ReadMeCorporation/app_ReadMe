class CartMockData {
  final int id;
  final String image;
  final String title;
  final String author;
  final String store;
  final String score;
  final int price;
  bool ischecked;

  CartMockData(
      {required this.id,
        required this.image,
      required this.title,
      required this.author,
      required this.store,
      required this.score,
      required this.price,
      this.ischecked = false});
}

List<CartMockData> cartList = [
  CartMockData(
    id: 1,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "1984",
      author: "조지 오웰",
      store: "그린",
      score: "4.5",
      price: 15000,
      ischecked: false),
  CartMockData(
      id: 2,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      id: 3,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      id: 4,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      id: 5,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      id: 6,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      id: 7,
      image: "https://readmecorpbucket.s3.ap-northeast-2.amazonaws.com/bookcover/e7c6f9c3-fefe-4384-8553-ddbe2929aed3-book2.png",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
];
