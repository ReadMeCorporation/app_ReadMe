class BigCategory {
  final int id;
  final String bigCategory;

  BigCategory({required this.id, required this.bigCategory});

  factory BigCategory.fromJson(Map<String, dynamic> json) {
    return BigCategory(
      id: json['id'],
      bigCategory: json['bigCategory'],
    );
  }
}
