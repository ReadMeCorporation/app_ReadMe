class FileInfo {
  final int id;
  final String type;

  FileInfo({required this.id, required this.type});


  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type,
  };


  FileInfo.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        type = json["type"];
}