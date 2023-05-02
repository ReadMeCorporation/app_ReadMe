class FileDTO {
   int id;
   String fileName;
   String fileUrl;

   FileDTO(
      {required this.id,
      required this.fileName,
      required this.fileUrl});

  factory FileDTO.fromJson(Map<String, dynamic> json) {
    return FileDTO(id : json["id"],
        fileName : json["fileName"],
        fileUrl : json["fileUrl"],
    );
  }
}
