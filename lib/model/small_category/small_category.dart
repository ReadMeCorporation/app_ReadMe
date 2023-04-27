class SmallCategory {
  final int id;
  final String smallCategory;
  final String status;

  SmallCategory(
      {required this.id, required this.smallCategory, required this.status});


  Map<String, dynamic> toJson() => {
    "id": id,
    "smallCategory": smallCategory,
    "status" : status,
  };


  SmallCategory.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        smallCategory = json["smallCategory"],
        status = json["status"];

}
