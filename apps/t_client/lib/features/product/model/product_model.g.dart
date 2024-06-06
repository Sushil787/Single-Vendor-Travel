// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      categoryType: json['categoryType'] as String,
      image: json['image'] as String,
      price: json['price'] as String,
      description: json['description'] as String,
      title: json['title'] as String,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'categoryType': instance.categoryType,
      'image': instance.image,
      'price': instance.price,
      'description': instance.description,
      'title': instance.title,
      'uuid': instance.uuid,
    };
