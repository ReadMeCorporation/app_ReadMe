// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookDetailDTO _$$_BookDetailDTOFromJson(Map<String, dynamic> json) =>
    _$_BookDetailDTO(
      id: json['id'] as int,
      publisher: Publisher.fromJson(json['publisher'] as Map<String, dynamic>),
      title: json['title'] as String,
      author: json['author'] as String,
      price: json['price'] as int,
      introduction: json['introduction'] as String,
      bigCategory:
          BigCategory.fromJson(json['bigCategory'] as Map<String, dynamic>),
      smallCategory:
          SmallCategory.fromJson(json['smallCategory'] as Map<String, dynamic>),
      authorInfo: json['authorInfo'] as String,
      epubFile: FileDTO.fromJson(json['epubFile'] as Map<String, dynamic>),
      coverFile: FileDTO.fromJson(json['coverFile'] as Map<String, dynamic>),
      reviews: Reviews.fromJson(json['reviews'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookDetailDTOToJson(_$_BookDetailDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'publisher': instance.publisher,
      'title': instance.title,
      'author': instance.author,
      'price': instance.price,
      'introduction': instance.introduction,
      'bigCategory': instance.bigCategory,
      'smallCategory': instance.smallCategory,
      'authorInfo': instance.authorInfo,
      'epubFile': instance.epubFile,
      'coverFile': instance.coverFile,
      'reviews': instance.reviews,
    };
