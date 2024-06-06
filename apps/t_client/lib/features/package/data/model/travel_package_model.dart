// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:t_client/features/package/data/model/comment_model.dart';
import 'package:t_client/features/package/data/model/date_time_serialization.dart';
part 'travel_package_model.freezed.dart';
part 'travel_package_model.g.dart';

@freezed
class TravelPackageModel with _$TravelPackageModel {
  const factory TravelPackageModel({
    required String uuid,
    required String packageType,
    required List<String> tags,
    required List<String> images,
    required String featuredImage,
    required String vrImage,
    required String description,
    required double latitude,
    required double longitude,
    required double perHeadPerNight,
    required String packageName,
    required String location,
    @ServerTimestampConverter() required DateTime createdAt,

    /// Like sunrise, best food,
    @Default([]) List<String> highlights,
    @Default(0) double discount,
    @Default(0) int favourite,

    /// Like included, food, bathroom ,wifi, ac , bottle water, newspaper

    @Default([]) List<String> inclusive,
    @Default(false) bool isFeatured,
    List<CommentModel>? reviews,
    @Default(0) double packageRating,
  }) = _TravelPackageModel;

  factory TravelPackageModel.fromJson(Map<String, dynamic> json) =>
      _$TravelPackageModelFromJson(json);
}
