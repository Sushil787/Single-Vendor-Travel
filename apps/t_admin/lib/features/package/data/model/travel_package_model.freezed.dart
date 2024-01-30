// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelPackageModel _$TravelPackageModelFromJson(Map<String, dynamic> json) {
  return _TravelPackageModel.fromJson(json);
}

/// @nodoc
mixin _$TravelPackageModel {
  String get uuid => throw _privateConstructorUsedError;
  String get packageType => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get featuredImage => throw _privateConstructorUsedError;
  String get vrImage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  double get perHeadPerNight => throw _privateConstructorUsedError;
  String get packageName => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  @ServerTimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Like sunrise, best food,
  List<String> get highlights => throw _privateConstructorUsedError;
  double get discount => throw _privateConstructorUsedError;

  /// Like included, food, bathroom ,wifi, ac , bottle water, newspaper
  /// , bathrobe,
  ///  telephone other
  List<String> get inclusive => throw _privateConstructorUsedError;
  bool get isFeatured => throw _privateConstructorUsedError;
  List<CommentModel>? get reviews => throw _privateConstructorUsedError;
  double get packageRating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelPackageModelCopyWith<TravelPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPackageModelCopyWith<$Res> {
  factory $TravelPackageModelCopyWith(
          TravelPackageModel value, $Res Function(TravelPackageModel) then) =
      _$TravelPackageModelCopyWithImpl<$Res, TravelPackageModel>;
  @useResult
  $Res call(
      {String uuid,
      String packageType,
      List<String> tags,
      List<String> images,
      String featuredImage,
      String vrImage,
      String description,
      double latitude,
      double longitude,
      double perHeadPerNight,
      String packageName,
      String location,
      @ServerTimestampConverter() DateTime createdAt,
      List<String> highlights,
      double discount,
      List<String> inclusive,
      bool isFeatured,
      List<CommentModel>? reviews,
      double packageRating});
}

/// @nodoc
class _$TravelPackageModelCopyWithImpl<$Res, $Val extends TravelPackageModel>
    implements $TravelPackageModelCopyWith<$Res> {
  _$TravelPackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? packageType = null,
    Object? tags = null,
    Object? images = null,
    Object? featuredImage = null,
    Object? vrImage = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? perHeadPerNight = null,
    Object? packageName = null,
    Object? location = null,
    Object? createdAt = null,
    Object? highlights = null,
    Object? discount = null,
    Object? inclusive = null,
    Object? isFeatured = null,
    Object? reviews = freezed,
    Object? packageRating = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String,
      vrImage: null == vrImage
          ? _value.vrImage
          : vrImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      perHeadPerNight: null == perHeadPerNight
          ? _value.perHeadPerNight
          : perHeadPerNight // ignore: cast_nullable_to_non_nullable
              as double,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      highlights: null == highlights
          ? _value.highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      inclusive: null == inclusive
          ? _value.inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      packageRating: null == packageRating
          ? _value.packageRating
          : packageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TravelPackageModelImplCopyWith<$Res>
    implements $TravelPackageModelCopyWith<$Res> {
  factory _$$TravelPackageModelImplCopyWith(_$TravelPackageModelImpl value,
          $Res Function(_$TravelPackageModelImpl) then) =
      __$$TravelPackageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String packageType,
      List<String> tags,
      List<String> images,
      String featuredImage,
      String vrImage,
      String description,
      double latitude,
      double longitude,
      double perHeadPerNight,
      String packageName,
      String location,
      @ServerTimestampConverter() DateTime createdAt,
      List<String> highlights,
      double discount,
      List<String> inclusive,
      bool isFeatured,
      List<CommentModel>? reviews,
      double packageRating});
}

/// @nodoc
class __$$TravelPackageModelImplCopyWithImpl<$Res>
    extends _$TravelPackageModelCopyWithImpl<$Res, _$TravelPackageModelImpl>
    implements _$$TravelPackageModelImplCopyWith<$Res> {
  __$$TravelPackageModelImplCopyWithImpl(_$TravelPackageModelImpl _value,
      $Res Function(_$TravelPackageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? packageType = null,
    Object? tags = null,
    Object? images = null,
    Object? featuredImage = null,
    Object? vrImage = null,
    Object? description = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? perHeadPerNight = null,
    Object? packageName = null,
    Object? location = null,
    Object? createdAt = null,
    Object? highlights = null,
    Object? discount = null,
    Object? inclusive = null,
    Object? isFeatured = null,
    Object? reviews = freezed,
    Object? packageRating = null,
  }) {
    return _then(_$TravelPackageModelImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as String,
      vrImage: null == vrImage
          ? _value.vrImage
          : vrImage // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      perHeadPerNight: null == perHeadPerNight
          ? _value.perHeadPerNight
          : perHeadPerNight // ignore: cast_nullable_to_non_nullable
              as double,
      packageName: null == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      highlights: null == highlights
          ? _value._highlights
          : highlights // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discount: null == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double,
      inclusive: null == inclusive
          ? _value._inclusive
          : inclusive // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>?,
      packageRating: null == packageRating
          ? _value.packageRating
          : packageRating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TravelPackageModelImpl implements _TravelPackageModel {
  const _$TravelPackageModelImpl(
      {required this.uuid,
      required this.packageType,
      required final List<String> tags,
      required final List<String> images,
      required this.featuredImage,
      required this.vrImage,
      required this.description,
      required this.latitude,
      required this.longitude,
      required this.perHeadPerNight,
      required this.packageName,
      required this.location,
      @ServerTimestampConverter() required this.createdAt,
      final List<String> highlights = const [],
      this.discount = 0,
      final List<String> inclusive = const [],
      this.isFeatured = false,
      final List<CommentModel>? reviews,
      this.packageRating = 0})
      : _tags = tags,
        _images = images,
        _highlights = highlights,
        _inclusive = inclusive,
        _reviews = reviews;

  factory _$TravelPackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TravelPackageModelImplFromJson(json);

  @override
  final String uuid;
  @override
  final String packageType;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String featuredImage;
  @override
  final String vrImage;
  @override
  final String description;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double perHeadPerNight;
  @override
  final String packageName;
  @override
  final String location;
  @override
  @ServerTimestampConverter()
  final DateTime createdAt;

  /// Like sunrise, best food,
  final List<String> _highlights;

  /// Like sunrise, best food,
  @override
  @JsonKey()
  List<String> get highlights {
    if (_highlights is EqualUnmodifiableListView) return _highlights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highlights);
  }

  @override
  @JsonKey()
  final double discount;

  /// Like included, food, bathroom ,wifi, ac , bottle water, newspaper
  /// , bathrobe,
  ///  telephone other
  final List<String> _inclusive;

  /// Like included, food, bathroom ,wifi, ac , bottle water, newspaper
  /// , bathrobe,
  ///  telephone other
  @override
  @JsonKey()
  List<String> get inclusive {
    if (_inclusive is EqualUnmodifiableListView) return _inclusive;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inclusive);
  }

  @override
  @JsonKey()
  final bool isFeatured;
  final List<CommentModel>? _reviews;
  @override
  List<CommentModel>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final double packageRating;

  @override
  String toString() {
    return 'TravelPackageModel(uuid: $uuid, packageType: $packageType, tags: $tags, images: $images, featuredImage: $featuredImage, vrImage: $vrImage, description: $description, latitude: $latitude, longitude: $longitude, perHeadPerNight: $perHeadPerNight, packageName: $packageName, location: $location, createdAt: $createdAt, highlights: $highlights, discount: $discount, inclusive: $inclusive, isFeatured: $isFeatured, reviews: $reviews, packageRating: $packageRating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageModelImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.featuredImage, featuredImage) ||
                other.featuredImage == featuredImage) &&
            (identical(other.vrImage, vrImage) || other.vrImage == vrImage) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.perHeadPerNight, perHeadPerNight) ||
                other.perHeadPerNight == perHeadPerNight) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality()
                .equals(other._highlights, _highlights) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            const DeepCollectionEquality()
                .equals(other._inclusive, _inclusive) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.packageRating, packageRating) ||
                other.packageRating == packageRating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        packageType,
        const DeepCollectionEquality().hash(_tags),
        const DeepCollectionEquality().hash(_images),
        featuredImage,
        vrImage,
        description,
        latitude,
        longitude,
        perHeadPerNight,
        packageName,
        location,
        createdAt,
        const DeepCollectionEquality().hash(_highlights),
        discount,
        const DeepCollectionEquality().hash(_inclusive),
        isFeatured,
        const DeepCollectionEquality().hash(_reviews),
        packageRating
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPackageModelImplCopyWith<_$TravelPackageModelImpl> get copyWith =>
      __$$TravelPackageModelImplCopyWithImpl<_$TravelPackageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TravelPackageModelImplToJson(
      this,
    );
  }
}

abstract class _TravelPackageModel implements TravelPackageModel {
  const factory _TravelPackageModel(
      {required final String uuid,
      required final String packageType,
      required final List<String> tags,
      required final List<String> images,
      required final String featuredImage,
      required final String vrImage,
      required final String description,
      required final double latitude,
      required final double longitude,
      required final double perHeadPerNight,
      required final String packageName,
      required final String location,
      @ServerTimestampConverter() required final DateTime createdAt,
      final List<String> highlights,
      final double discount,
      final List<String> inclusive,
      final bool isFeatured,
      final List<CommentModel>? reviews,
      final double packageRating}) = _$TravelPackageModelImpl;

  factory _TravelPackageModel.fromJson(Map<String, dynamic> json) =
      _$TravelPackageModelImpl.fromJson;

  @override
  String get uuid;
  @override
  String get packageType;
  @override
  List<String> get tags;
  @override
  List<String> get images;
  @override
  String get featuredImage;
  @override
  String get vrImage;
  @override
  String get description;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  double get perHeadPerNight;
  @override
  String get packageName;
  @override
  String get location;
  @override
  @ServerTimestampConverter()
  DateTime get createdAt;
  @override

  /// Like sunrise, best food,
  List<String> get highlights;
  @override
  double get discount;
  @override

  /// Like included, food, bathroom ,wifi, ac , bottle water, newspaper
  /// , bathrobe,
  ///  telephone other
  List<String> get inclusive;
  @override
  bool get isFeatured;
  @override
  List<CommentModel>? get reviews;
  @override
  double get packageRating;
  @override
  @JsonKey(ignore: true)
  _$$TravelPackageModelImplCopyWith<_$TravelPackageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
