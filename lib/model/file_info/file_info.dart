class FileDTO {
  final int id;
  final String fileName;
  final String fileUrl;
  final String status;

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

  FileDTO.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        fileName = json["fileName"],
        fileUrl = json["fileUrl"],
        status = json["status"];
}
