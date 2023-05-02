class FileDTO {
   int id;
   String fileName;
   String fileUrl;
   String status;

  FileDTO(
      {required this.id,
      required this.fileName,
      required this.fileUrl,
      required this.status});

  Map<String, dynamic> toJson() => {
        "id": id,
        "fileName": fileName,
        "fileUrl": fileUrl,
        "status": status,
      };

  factory FileDTO.fromJson(Map<String, dynamic> json) {
    print("file start : " + json.toString());
    var files = FileDTO(id : json["id"],
        fileName : json["fileName"],
        fileUrl : json["fileUrl"],
        status : json["status"]
    );
    print("file end : " + json.toString());
    return files;
  }
}
