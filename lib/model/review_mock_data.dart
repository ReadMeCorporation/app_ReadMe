
class ReviewMockData{
final int stars;
final String userId;
final String writeTime;
final String content;

ReviewMockData(
    {
      required this.stars,
      required this.userId,
      required this.writeTime,
      required this.content,
    });
}

List<ReviewMockData> riewList = [
  ReviewMockData(
      stars: 4,
      userId: "ssar@nate.com",
      writeTime: "2023.04.01",
      content: "너무 재밌게 봤습니다!! 최고!!"

  ),
  ReviewMockData(
      stars: 4,
      userId: "ssar@nate.com",
      writeTime: "2023.04.01",
      content: "너무 재밌게 봤습니다!! 최고!!"

  ),
  ReviewMockData(
      stars: 2,
      userId: "cos@nate.com",
      writeTime: "2023.04.01",
      content: "영감이 부족하네요."

  ),
  ReviewMockData(
      stars: 3,
      userId: "love@nate.com",
      writeTime: "2023.04.01",
      content: "그럭저럭 볼만 합니다."
  ),
];
