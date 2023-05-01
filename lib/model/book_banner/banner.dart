import 'package:readme_app/model/file_info/file_info.dart';

class BookBanner{
  int id;
  List<FileDTO> fileDTOList;

  BookBanner({required this.id, required this.fileDTOList});

  Map<String, dynamic> toJson() => {
    "id": id,
    "fileDTOList": fileDTOList
  };


  BookBanner.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        fileDTOList = json["fileDTOList"].map((e) => FileDTO.fromJson(e)).toList();
}