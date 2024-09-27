// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArticleResponseImpl _$$ArticleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ArticleResponseImpl(
      status: json['status'] as String,
      totalResults: json['totalResults'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPage: json['nextPage'] as String?,
    );

Map<String, dynamic> _$$ArticleResponseImplToJson(
        _$ArticleResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'results': instance.results,
      'nextPage': instance.nextPage,
    };

_$ArticleImpl _$$ArticleImplFromJson(Map<String, dynamic> json) =>
    _$ArticleImpl(
      articleId: json['article_id'] as String,
      title: json['title'] as String,
      link: json['link'] as String,
      keywords: (json['keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      creator:
          (json['creator'] as List<dynamic>?)?.map((e) => e as String).toList(),
      videoUrl: json['video_url'] as String?,
      description: json['description'] as String?,
      content: json['content'] as String?,
      pubDate: json['pubDate'] as String?,
      imageUrl: json['image_url'] as String?,
      sourceId: json['source_id'] as String?,
      sourcePriority: json['source_priority'] as int?,
      sourceUrl: json['source_url'] as String?,
      sourceIcon: json['source_icon'] as String?,
      language: json['language'] as String?,
      country:
          (json['country'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: (json['category'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      aiTag: json['ai_tag'] as String?,
      sentiment: json['sentiment'] as String?,
      sentimentStats: json['sentiment_stats'] as String?,
      aiRegion: json['ai_region'] as String?,
      aiOrg: json['ai_org'] as String?,
    );

Map<String, dynamic> _$$ArticleImplToJson(_$ArticleImpl instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'title': instance.title,
      'link': instance.link,
      'keywords': instance.keywords,
      'creator': instance.creator,
      'video_url': instance.videoUrl,
      'description': instance.description,
      'content': instance.content,
      'pubDate': instance.pubDate,
      'image_url': instance.imageUrl,
      'source_id': instance.sourceId,
      'source_priority': instance.sourcePriority,
      'source_url': instance.sourceUrl,
      'source_icon': instance.sourceIcon,
      'language': instance.language,
      'country': instance.country,
      'category': instance.category,
      'ai_tag': instance.aiTag,
      'sentiment': instance.sentiment,
      'sentiment_stats': instance.sentimentStats,
      'ai_region': instance.aiRegion,
      'ai_org': instance.aiOrg,
    };
