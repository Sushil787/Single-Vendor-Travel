// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentModelImpl _$$CommentModelImplFromJson(Map<String, dynamic> json) =>
    _$CommentModelImpl(
      commentId: json['commentId'] as String,
      uuid: json['uuid'] as String,
      packageId: json['packageId'] as String,
      uname: json['uname'] as String,
      comment: json['comment'] as String,
      profileUrl: json['profileUrl'] as String? ?? null,
    );

Map<String, dynamic> _$$CommentModelImplToJson(_$CommentModelImpl instance) =>
    <String, dynamic>{
      'commentId': instance.commentId,
      'uuid': instance.uuid,
      'packageId': instance.packageId,
      'uname': instance.uname,
      'comment': instance.comment,
      'profileUrl': instance.profileUrl,
    };
