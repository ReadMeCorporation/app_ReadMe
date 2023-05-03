// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reviews _$$_ReviewsFromJson(Map<String, dynamic> json) => _$_Reviews(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      stars: (json['stars'] as num).toDouble(),
      content: json['content'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$_ReviewsToJson(_$_Reviews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'stars': instance.stars,
      'content': instance.content,
      'status': instance.status,
    };
