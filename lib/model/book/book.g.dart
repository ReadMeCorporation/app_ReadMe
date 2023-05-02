// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Book _$$_BookFromJson(Map<String, dynamic> json) => _$_Book(
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
      isHeart: json['isHeart'] as bool,
      stars: (json['stars'] as num).toDouble(),
      epubFile: FileDTO.fromJson(json['epubFile'] as Map<String, dynamic>),
      coverFile: FileDTO.fromJson(json['coverFile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BookToJson(_$_Book instance) => <String, dynamic>{
      'id': instance.id,
      'publisher': instance.publisher,
      'title': instance.title,
      'author': instance.author,
      'price': instance.price,
      'introduction': instance.introduction,
      'bigCategory': instance.bigCategory,
      'smallCategory': instance.smallCategory,
      'authorInfo': instance.authorInfo,
      'isHeart': instance.isHeart,
      'stars': instance.stars,
      'epubFile': instance.epubFile,
      'coverFile': instance.coverFile,
    };
