class BigCategory {
  final int id;
  final String bigCategory;
  final String status;

  BigCategory(
      {required this.id, required this.bigCategory, required this.status});

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "bigCategory": bigCategory,
        "status": status,
      };


  factory BigCategory.fromJson(Map<String, dynamic> json) {
    print("bigCategory start : " + json.toString());
    var bigCategory = BigCategory(id: json["id"],
        bigCategory: json["bigCategory"],
        status: json["status"]
    );
    print("bigCategory end : " + json.toString());
    return bigCategory;
  }

}