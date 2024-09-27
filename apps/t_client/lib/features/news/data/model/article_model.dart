import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

/// Article Response Model
@freezed
class ArticleResponse with _$ArticleResponse {
  ///
  const factory ArticleResponse({
    required String status,
    required int totalResults,
    required List<Article> results,
    String? nextPage,
  }) = _ArticleResponse;

  ///
  factory ArticleResponse.fromJson(Map<String, dynamic> json) =>
      _$ArticleResponseFromJson(json);
}

/// Article Model
@freezed
class Article with _$Article {
  ///
  const factory Article({
    @JsonKey(name: 'article_id') required String articleId,
    required String title,
    required String link,
    List<String>? keywords,
    List<String>? creator,
    @JsonKey(name: 'video_url') String? videoUrl,
    String? description,
    String? content,
    String? pubDate,
    @JsonKey(name: 'image_url') String? imageUrl,
    @JsonKey(name: 'source_id') String? sourceId,
    @JsonKey(name: 'source_priority') int? sourcePriority,
    @JsonKey(name: 'source_url') String? sourceUrl,
    @JsonKey(name: 'source_icon') String? sourceIcon,
    String? language,
    List<String>? country,
    List<String>? category,
    @JsonKey(name: 'ai_tag') String? aiTag,
    String? sentiment,
    @JsonKey(name: 'sentiment_stats') String? sentimentStats,
    @JsonKey(name: 'ai_region') String? aiRegion,
    @JsonKey(name: 'ai_org') String? aiOrg,
  }) = _Article;

  ///
  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}
