class CartMockData {
  final String image;
  final String title;
  final String author;
  final String store;
  final String score;
  final int price;
  bool ischecked;

  CartMockData(
      {required this.image,
        required this.title,
        required this.author,
        required this.store,
        required this.score,
        required this.price,
        this.ischecked = false});
}

List<CartMockData> cartList = [
  CartMockData(
      image: "book.jpg",
      title: "1984",
      author: "조지 오웰",
      store: "그린",
      score: "4.5",
      price: 15000,
      ischecked: false),
  CartMockData(
      image: "book2.jpg",
      title: "물고기는 존재하지 않는다",
      author: "룰루 밀러",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      image: "book1.png",
      title: "언어의 무게",
      author: "파스칼 메르시어",
      store: "그린",
      score: "4.5",
      price: 15000,
      ischecked: false),
  CartMockData(
      image: "book2.png",
      title: "저주 토끼",
      author: "정보라",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
  CartMockData(
      image: "book3.png",
      title: "모든 삶은 흐른다",
      author: "로랑스 드빌레르",
      store: "그린",
      score: "4.0",
      price: 12000,
      ischecked: false),
];
