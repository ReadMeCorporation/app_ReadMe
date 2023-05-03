



class FileReqDTO {
  final int? id;
  final String? fileName;
  final String? fileUrl;
  final String? status;

  FileReqDTO({
    required this.id,
    required this.fileName,
    required this.fileUrl,
    required this.status,
  });

  FileReqDTO.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        fileName = json["fileName"],
        fileUrl = json["fileUrl"],
        status = json["status"];
}
