// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      uname: json['uname'] as String,
      profileUrl: json['profileUrl'] as String,
      comment: json['comment'] as String,
      rating: (json['rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'uname': instance.uname,
      'profileUrl': instance.profileUrl,
      'comment': instance.comment,
      'rating': instance.rating,
    };
