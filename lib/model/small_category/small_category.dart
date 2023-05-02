class SmallCategory {
  final int id;
  final String smallCategory;

  SmallCategory(
      {required this.id, required this.smallCategory});

  factory SmallCategory.fromJson(Map<String, dynamic> json) {
   return SmallCategory(
        id: json['id'],
        smallCategory: json['smallCategory'],
    );
  }
}
