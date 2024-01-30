// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TravelPackageModelImpl _$$TravelPackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TravelPackageModelImpl(
      uuid: json['uuid'] as String,
      packageType: json['packageType'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      featuredImage: json['featuredImage'] as String,
      vrImage: json['vrImage'] as String,
      description: json['description'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      perHeadPerNight: (json['perHeadPerNight'] as num).toDouble(),
      packageName: json['packageName'] as String,
      location: json['location'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      highlights: (json['highlights'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      discount: (json['discount'] as num?)?.toDouble() ?? 0,
      inclusive: (json['inclusive'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      isFeatured: json['isFeatured'] as bool? ?? false,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      packageRating: (json['packageRating'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$TravelPackageModelImplToJson(
        _$TravelPackageModelImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'packageType': instance.packageType,
      'tags': instance.tags,
      'images': instance.images,
      'featuredImage': instance.featuredImage,
      'vrImage': instance.vrImage,
      'description': instance.description,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'perHeadPerNight': instance.perHeadPerNight,
      'packageName': instance.packageName,
      'location': instance.location,
      'createdAt': instance.createdAt.toIso8601String(),
      'highlights': instance.highlights,
      'discount': instance.discount,
      'inclusive': instance.inclusive,
      'isFeatured': instance.isFeatured,
      'reviews': instance.reviews,
      'packageRating': instance.packageRating,
    };
