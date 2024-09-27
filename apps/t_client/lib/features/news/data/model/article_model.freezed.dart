// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'article_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArticleResponse _$ArticleResponseFromJson(Map<String, dynamic> json) {
  return _ArticleResponse.fromJson(json);
}

/// @nodoc
mixin _$ArticleResponse {
  String get status => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  List<Article> get results => throw _privateConstructorUsedError;
  String? get nextPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleResponseCopyWith<ArticleResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleResponseCopyWith<$Res> {
  factory $ArticleResponseCopyWith(
          ArticleResponse value, $Res Function(ArticleResponse) then) =
      _$ArticleResponseCopyWithImpl<$Res, ArticleResponse>;
  @useResult
  $Res call(
      {String status,
      int totalResults,
      List<Article> results,
      String? nextPage});
}

/// @nodoc
class _$ArticleResponseCopyWithImpl<$Res, $Val extends ArticleResponse>
    implements $ArticleResponseCopyWith<$Res> {
  _$ArticleResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? results = null,
    Object? nextPage = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleResponseImplCopyWith<$Res>
    implements $ArticleResponseCopyWith<$Res> {
  factory _$$ArticleResponseImplCopyWith(_$ArticleResponseImpl value,
          $Res Function(_$ArticleResponseImpl) then) =
      __$$ArticleResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status,
      int totalResults,
      List<Article> results,
      String? nextPage});
}

/// @nodoc
class __$$ArticleResponseImplCopyWithImpl<$Res>
    extends _$ArticleResponseCopyWithImpl<$Res, _$ArticleResponseImpl>
    implements _$$ArticleResponseImplCopyWith<$Res> {
  __$$ArticleResponseImplCopyWithImpl(
      _$ArticleResponseImpl _value, $Res Function(_$ArticleResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? results = null,
    Object? nextPage = freezed,
  }) {
    return _then(_$ArticleResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      nextPage: freezed == nextPage
          ? _value.nextPage
          : nextPage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleResponseImpl implements _ArticleResponse {
  const _$ArticleResponseImpl(
      {required this.status,
      required this.totalResults,
      required final List<Article> results,
      this.nextPage})
      : _results = results;

  factory _$ArticleResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleResponseImplFromJson(json);

  @override
  final String status;
  @override
  final int totalResults;
  final List<Article> _results;
  @override
  List<Article> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String? nextPage;

  @override
  String toString() {
    return 'ArticleResponse(status: $status, totalResults: $totalResults, results: $results, nextPage: $nextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.nextPage, nextPage) ||
                other.nextPage == nextPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_results), nextPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleResponseImplCopyWith<_$ArticleResponseImpl> get copyWith =>
      __$$ArticleResponseImplCopyWithImpl<_$ArticleResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleResponseImplToJson(
      this,
    );
  }
}

abstract class _ArticleResponse implements ArticleResponse {
  const factory _ArticleResponse(
      {required final String status,
      required final int totalResults,
      required final List<Article> results,
      final String? nextPage}) = _$ArticleResponseImpl;

  factory _ArticleResponse.fromJson(Map<String, dynamic> json) =
      _$ArticleResponseImpl.fromJson;

  @override
  String get status;
  @override
  int get totalResults;
  @override
  List<Article> get results;
  @override
  String? get nextPage;
  @override
  @JsonKey(ignore: true)
  _$$ArticleResponseImplCopyWith<_$ArticleResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return _Article.fromJson(json);
}

/// @nodoc
mixin _$Article {
  @JsonKey(name: 'article_id')
  String get articleId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  List<String>? get keywords => throw _privateConstructorUsedError;
  List<String>? get creator => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_url')
  String? get videoUrl => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get pubDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_id')
  String? get sourceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_priority')
  int? get sourcePriority => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_url')
  String? get sourceUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'source_icon')
  String? get sourceIcon => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get country => throw _privateConstructorUsedError;
  List<String>? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_tag')
  String? get aiTag => throw _privateConstructorUsedError;
  String? get sentiment => throw _privateConstructorUsedError;
  @JsonKey(name: 'sentiment_stats')
  String? get sentimentStats => throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_region')
  String? get aiRegion => throw _privateConstructorUsedError;
  @JsonKey(name: 'ai_org')
  String? get aiOrg => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticleCopyWith<Article> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleCopyWith<$Res> {
  factory $ArticleCopyWith(Article value, $Res Function(Article) then) =
      _$ArticleCopyWithImpl<$Res, Article>;
  @useResult
  $Res call(
      {@JsonKey(name: 'article_id') String articleId,
      String title,
      String link,
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
      @JsonKey(name: 'ai_org') String? aiOrg});
}

/// @nodoc
class _$ArticleCopyWithImpl<$Res, $Val extends Article>
    implements $ArticleCopyWith<$Res> {
  _$ArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
    Object? title = null,
    Object? link = null,
    Object? keywords = freezed,
    Object? creator = freezed,
    Object? videoUrl = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? pubDate = freezed,
    Object? imageUrl = freezed,
    Object? sourceId = freezed,
    Object? sourcePriority = freezed,
    Object? sourceUrl = freezed,
    Object? sourceIcon = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? aiTag = freezed,
    Object? sentiment = freezed,
    Object? sentimentStats = freezed,
    Object? aiRegion = freezed,
    Object? aiOrg = freezed,
  }) {
    return _then(_value.copyWith(
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: freezed == keywords
          ? _value.keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcePriority: freezed == sourcePriority
          ? _value.sourcePriority
          : sourcePriority // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIcon: freezed == sourceIcon
          ? _value.sourceIcon
          : sourceIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiTag: freezed == aiTag
          ? _value.aiTag
          : aiTag // ignore: cast_nullable_to_non_nullable
              as String?,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentStats: freezed == sentimentStats
          ? _value.sentimentStats
          : sentimentStats // ignore: cast_nullable_to_non_nullable
              as String?,
      aiRegion: freezed == aiRegion
          ? _value.aiRegion
          : aiRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      aiOrg: freezed == aiOrg
          ? _value.aiOrg
          : aiOrg // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticleImplCopyWith<$Res> implements $ArticleCopyWith<$Res> {
  factory _$$ArticleImplCopyWith(
          _$ArticleImpl value, $Res Function(_$ArticleImpl) then) =
      __$$ArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'article_id') String articleId,
      String title,
      String link,
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
      @JsonKey(name: 'ai_org') String? aiOrg});
}

/// @nodoc
class __$$ArticleImplCopyWithImpl<$Res>
    extends _$ArticleCopyWithImpl<$Res, _$ArticleImpl>
    implements _$$ArticleImplCopyWith<$Res> {
  __$$ArticleImplCopyWithImpl(
      _$ArticleImpl _value, $Res Function(_$ArticleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
    Object? title = null,
    Object? link = null,
    Object? keywords = freezed,
    Object? creator = freezed,
    Object? videoUrl = freezed,
    Object? description = freezed,
    Object? content = freezed,
    Object? pubDate = freezed,
    Object? imageUrl = freezed,
    Object? sourceId = freezed,
    Object? sourcePriority = freezed,
    Object? sourceUrl = freezed,
    Object? sourceIcon = freezed,
    Object? language = freezed,
    Object? country = freezed,
    Object? category = freezed,
    Object? aiTag = freezed,
    Object? sentiment = freezed,
    Object? sentimentStats = freezed,
    Object? aiRegion = freezed,
    Object? aiOrg = freezed,
  }) {
    return _then(_$ArticleImpl(
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      keywords: freezed == keywords
          ? _value._keywords
          : keywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      creator: freezed == creator
          ? _value._creator
          : creator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      videoUrl: freezed == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      pubDate: freezed == pubDate
          ? _value.pubDate
          : pubDate // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceId: freezed == sourceId
          ? _value.sourceId
          : sourceId // ignore: cast_nullable_to_non_nullable
              as String?,
      sourcePriority: freezed == sourcePriority
          ? _value.sourcePriority
          : sourcePriority // ignore: cast_nullable_to_non_nullable
              as int?,
      sourceUrl: freezed == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceIcon: freezed == sourceIcon
          ? _value.sourceIcon
          : sourceIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value._country
          : country // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      category: freezed == category
          ? _value._category
          : category // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      aiTag: freezed == aiTag
          ? _value.aiTag
          : aiTag // ignore: cast_nullable_to_non_nullable
              as String?,
      sentiment: freezed == sentiment
          ? _value.sentiment
          : sentiment // ignore: cast_nullable_to_non_nullable
              as String?,
      sentimentStats: freezed == sentimentStats
          ? _value.sentimentStats
          : sentimentStats // ignore: cast_nullable_to_non_nullable
              as String?,
      aiRegion: freezed == aiRegion
          ? _value.aiRegion
          : aiRegion // ignore: cast_nullable_to_non_nullable
              as String?,
      aiOrg: freezed == aiOrg
          ? _value.aiOrg
          : aiOrg // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArticleImpl implements _Article {
  const _$ArticleImpl(
      {@JsonKey(name: 'article_id') required this.articleId,
      required this.title,
      required this.link,
      final List<String>? keywords,
      final List<String>? creator,
      @JsonKey(name: 'video_url') this.videoUrl,
      this.description,
      this.content,
      this.pubDate,
      @JsonKey(name: 'image_url') this.imageUrl,
      @JsonKey(name: 'source_id') this.sourceId,
      @JsonKey(name: 'source_priority') this.sourcePriority,
      @JsonKey(name: 'source_url') this.sourceUrl,
      @JsonKey(name: 'source_icon') this.sourceIcon,
      this.language,
      final List<String>? country,
      final List<String>? category,
      @JsonKey(name: 'ai_tag') this.aiTag,
      this.sentiment,
      @JsonKey(name: 'sentiment_stats') this.sentimentStats,
      @JsonKey(name: 'ai_region') this.aiRegion,
      @JsonKey(name: 'ai_org') this.aiOrg})
      : _keywords = keywords,
        _creator = creator,
        _country = country,
        _category = category;

  factory _$ArticleImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticleImplFromJson(json);

  @override
  @JsonKey(name: 'article_id')
  final String articleId;
  @override
  final String title;
  @override
  final String link;
  final List<String>? _keywords;
  @override
  List<String>? get keywords {
    final value = _keywords;
    if (value == null) return null;
    if (_keywords is EqualUnmodifiableListView) return _keywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _creator;
  @override
  List<String>? get creator {
    final value = _creator;
    if (value == null) return null;
    if (_creator is EqualUnmodifiableListView) return _creator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'video_url')
  final String? videoUrl;
  @override
  final String? description;
  @override
  final String? content;
  @override
  final String? pubDate;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  @JsonKey(name: 'source_id')
  final String? sourceId;
  @override
  @JsonKey(name: 'source_priority')
  final int? sourcePriority;
  @override
  @JsonKey(name: 'source_url')
  final String? sourceUrl;
  @override
  @JsonKey(name: 'source_icon')
  final String? sourceIcon;
  @override
  final String? language;
  final List<String>? _country;
  @override
  List<String>? get country {
    final value = _country;
    if (value == null) return null;
    if (_country is EqualUnmodifiableListView) return _country;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _category;
  @override
  List<String>? get category {
    final value = _category;
    if (value == null) return null;
    if (_category is EqualUnmodifiableListView) return _category;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'ai_tag')
  final String? aiTag;
  @override
  final String? sentiment;
  @override
  @JsonKey(name: 'sentiment_stats')
  final String? sentimentStats;
  @override
  @JsonKey(name: 'ai_region')
  final String? aiRegion;
  @override
  @JsonKey(name: 'ai_org')
  final String? aiOrg;

  @override
  String toString() {
    return 'Article(articleId: $articleId, title: $title, link: $link, keywords: $keywords, creator: $creator, videoUrl: $videoUrl, description: $description, content: $content, pubDate: $pubDate, imageUrl: $imageUrl, sourceId: $sourceId, sourcePriority: $sourcePriority, sourceUrl: $sourceUrl, sourceIcon: $sourceIcon, language: $language, country: $country, category: $category, aiTag: $aiTag, sentiment: $sentiment, sentimentStats: $sentimentStats, aiRegion: $aiRegion, aiOrg: $aiOrg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticleImpl &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            const DeepCollectionEquality().equals(other._keywords, _keywords) &&
            const DeepCollectionEquality().equals(other._creator, _creator) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.pubDate, pubDate) || other.pubDate == pubDate) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sourceId, sourceId) ||
                other.sourceId == sourceId) &&
            (identical(other.sourcePriority, sourcePriority) ||
                other.sourcePriority == sourcePriority) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.sourceIcon, sourceIcon) ||
                other.sourceIcon == sourceIcon) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._country, _country) &&
            const DeepCollectionEquality().equals(other._category, _category) &&
            (identical(other.aiTag, aiTag) || other.aiTag == aiTag) &&
            (identical(other.sentiment, sentiment) ||
                other.sentiment == sentiment) &&
            (identical(other.sentimentStats, sentimentStats) ||
                other.sentimentStats == sentimentStats) &&
            (identical(other.aiRegion, aiRegion) ||
                other.aiRegion == aiRegion) &&
            (identical(other.aiOrg, aiOrg) || other.aiOrg == aiOrg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        articleId,
        title,
        link,
        const DeepCollectionEquality().hash(_keywords),
        const DeepCollectionEquality().hash(_creator),
        videoUrl,
        description,
        content,
        pubDate,
        imageUrl,
        sourceId,
        sourcePriority,
        sourceUrl,
        sourceIcon,
        language,
        const DeepCollectionEquality().hash(_country),
        const DeepCollectionEquality().hash(_category),
        aiTag,
        sentiment,
        sentimentStats,
        aiRegion,
        aiOrg
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      __$$ArticleImplCopyWithImpl<_$ArticleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticleImplToJson(
      this,
    );
  }
}

abstract class _Article implements Article {
  const factory _Article(
      {@JsonKey(name: 'article_id') required final String articleId,
      required final String title,
      required final String link,
      final List<String>? keywords,
      final List<String>? creator,
      @JsonKey(name: 'video_url') final String? videoUrl,
      final String? description,
      final String? content,
      final String? pubDate,
      @JsonKey(name: 'image_url') final String? imageUrl,
      @JsonKey(name: 'source_id') final String? sourceId,
      @JsonKey(name: 'source_priority') final int? sourcePriority,
      @JsonKey(name: 'source_url') final String? sourceUrl,
      @JsonKey(name: 'source_icon') final String? sourceIcon,
      final String? language,
      final List<String>? country,
      final List<String>? category,
      @JsonKey(name: 'ai_tag') final String? aiTag,
      final String? sentiment,
      @JsonKey(name: 'sentiment_stats') final String? sentimentStats,
      @JsonKey(name: 'ai_region') final String? aiRegion,
      @JsonKey(name: 'ai_org') final String? aiOrg}) = _$ArticleImpl;

  factory _Article.fromJson(Map<String, dynamic> json) = _$ArticleImpl.fromJson;

  @override
  @JsonKey(name: 'article_id')
  String get articleId;
  @override
  String get title;
  @override
  String get link;
  @override
  List<String>? get keywords;
  @override
  List<String>? get creator;
  @override
  @JsonKey(name: 'video_url')
  String? get videoUrl;
  @override
  String? get description;
  @override
  String? get content;
  @override
  String? get pubDate;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  @JsonKey(name: 'source_id')
  String? get sourceId;
  @override
  @JsonKey(name: 'source_priority')
  int? get sourcePriority;
  @override
  @JsonKey(name: 'source_url')
  String? get sourceUrl;
  @override
  @JsonKey(name: 'source_icon')
  String? get sourceIcon;
  @override
  String? get language;
  @override
  List<String>? get country;
  @override
  List<String>? get category;
  @override
  @JsonKey(name: 'ai_tag')
  String? get aiTag;
  @override
  String? get sentiment;
  @override
  @JsonKey(name: 'sentiment_stats')
  String? get sentimentStats;
  @override
  @JsonKey(name: 'ai_region')
  String? get aiRegion;
  @override
  @JsonKey(name: 'ai_org')
  String? get aiOrg;
  @override
  @JsonKey(ignore: true)
  _$$ArticleImplCopyWith<_$ArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
