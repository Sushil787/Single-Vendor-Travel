// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'travel_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TravelEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        addPackage,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        updatePacakge,
    required TResult Function() get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult? Function()? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult Function()? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delete value) delete,
    required TResult Function(_AddPackage value) addPackage,
    required TResult Function(_UpdatePackge value) updatePacakge,
    required TResult Function(Get value) get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delete value)? delete,
    TResult? Function(_AddPackage value)? addPackage,
    TResult? Function(_UpdatePackge value)? updatePacakge,
    TResult? Function(Get value)? get,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delete value)? delete,
    TResult Function(_AddPackage value)? addPackage,
    TResult Function(_UpdatePackge value)? updatePacakge,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelEventCopyWith<$Res> {
  factory $TravelEventCopyWith(
          TravelEvent value, $Res Function(TravelEvent) then) =
      _$TravelEventCopyWithImpl<$Res, TravelEvent>;
}

/// @nodoc
class _$TravelEventCopyWithImpl<$Res, $Val extends TravelEvent>
    implements $TravelEventCopyWith<$Res> {
  _$TravelEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteImpl with DiagnosticableTreeMixin implements Delete {
  const _$DeleteImpl({required this.id});

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.delete(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.delete'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        addPackage,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        updatePacakge,
    required TResult Function() get,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult? Function()? get,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delete value) delete,
    required TResult Function(_AddPackage value) addPackage,
    required TResult Function(_UpdatePackge value) updatePacakge,
    required TResult Function(Get value) get,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delete value)? delete,
    TResult? Function(_AddPackage value)? addPackage,
    TResult? Function(_UpdatePackge value)? updatePacakge,
    TResult? Function(Get value)? get,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delete value)? delete,
    TResult Function(_AddPackage value)? addPackage,
    TResult Function(_UpdatePackge value)? updatePacakge,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements TravelEvent {
  const factory Delete({required final String id}) = _$DeleteImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPackageImplCopyWith<$Res> {
  factory _$$AddPackageImplCopyWith(
          _$AddPackageImpl value, $Res Function(_$AddPackageImpl) then) =
      __$$AddPackageImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uint8List vrImage,
      List<Uint8List> images,
      Uint8List featuredImage,
      TravelPackageModel travelPackageModel});

  $TravelPackageModelCopyWith<$Res> get travelPackageModel;
}

/// @nodoc
class __$$AddPackageImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$AddPackageImpl>
    implements _$$AddPackageImplCopyWith<$Res> {
  __$$AddPackageImplCopyWithImpl(
      _$AddPackageImpl _value, $Res Function(_$AddPackageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vrImage = null,
    Object? images = null,
    Object? featuredImage = null,
    Object? travelPackageModel = null,
  }) {
    return _then(_$AddPackageImpl(
      vrImage: null == vrImage
          ? _value.vrImage
          : vrImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      travelPackageModel: null == travelPackageModel
          ? _value.travelPackageModel
          : travelPackageModel // ignore: cast_nullable_to_non_nullable
              as TravelPackageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelPackageModelCopyWith<$Res> get travelPackageModel {
    return $TravelPackageModelCopyWith<$Res>(_value.travelPackageModel,
        (value) {
      return _then(_value.copyWith(travelPackageModel: value));
    });
  }
}

/// @nodoc

class _$AddPackageImpl with DiagnosticableTreeMixin implements _AddPackage {
  const _$AddPackageImpl(
      {required this.vrImage,
      required final List<Uint8List> images,
      required this.featuredImage,
      required this.travelPackageModel})
      : _images = images;

  @override
  final Uint8List vrImage;
  final List<Uint8List> _images;
  @override
  List<Uint8List> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Uint8List featuredImage;
  @override
  final TravelPackageModel travelPackageModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.addPackage(vrImage: $vrImage, images: $images, featuredImage: $featuredImage, travelPackageModel: $travelPackageModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.addPackage'))
      ..add(DiagnosticsProperty('vrImage', vrImage))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('featuredImage', featuredImage))
      ..add(DiagnosticsProperty('travelPackageModel', travelPackageModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPackageImpl &&
            const DeepCollectionEquality().equals(other.vrImage, vrImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other.featuredImage, featuredImage) &&
            (identical(other.travelPackageModel, travelPackageModel) ||
                other.travelPackageModel == travelPackageModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vrImage),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(featuredImage),
      travelPackageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPackageImplCopyWith<_$AddPackageImpl> get copyWith =>
      __$$AddPackageImplCopyWithImpl<_$AddPackageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        addPackage,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        updatePacakge,
    required TResult Function() get,
  }) {
    return addPackage(vrImage, images, featuredImage, travelPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult? Function()? get,
  }) {
    return addPackage?.call(vrImage, images, featuredImage, travelPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (addPackage != null) {
      return addPackage(vrImage, images, featuredImage, travelPackageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delete value) delete,
    required TResult Function(_AddPackage value) addPackage,
    required TResult Function(_UpdatePackge value) updatePacakge,
    required TResult Function(Get value) get,
  }) {
    return addPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delete value)? delete,
    TResult? Function(_AddPackage value)? addPackage,
    TResult? Function(_UpdatePackge value)? updatePacakge,
    TResult? Function(Get value)? get,
  }) {
    return addPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delete value)? delete,
    TResult Function(_AddPackage value)? addPackage,
    TResult Function(_UpdatePackge value)? updatePacakge,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (addPackage != null) {
      return addPackage(this);
    }
    return orElse();
  }
}

abstract class _AddPackage implements TravelEvent {
  const factory _AddPackage(
      {required final Uint8List vrImage,
      required final List<Uint8List> images,
      required final Uint8List featuredImage,
      required final TravelPackageModel travelPackageModel}) = _$AddPackageImpl;

  Uint8List get vrImage;
  List<Uint8List> get images;
  Uint8List get featuredImage;
  TravelPackageModel get travelPackageModel;
  @JsonKey(ignore: true)
  _$$AddPackageImplCopyWith<_$AddPackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdatePackgeImplCopyWith<$Res> {
  factory _$$UpdatePackgeImplCopyWith(
          _$UpdatePackgeImpl value, $Res Function(_$UpdatePackgeImpl) then) =
      __$$UpdatePackgeImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Uint8List vrImage,
      List<Uint8List> images,
      Uint8List featuredImage,
      TravelPackageModel travelPackageModel});

  $TravelPackageModelCopyWith<$Res> get travelPackageModel;
}

/// @nodoc
class __$$UpdatePackgeImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$UpdatePackgeImpl>
    implements _$$UpdatePackgeImplCopyWith<$Res> {
  __$$UpdatePackgeImplCopyWithImpl(
      _$UpdatePackgeImpl _value, $Res Function(_$UpdatePackgeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vrImage = null,
    Object? images = null,
    Object? featuredImage = null,
    Object? travelPackageModel = null,
  }) {
    return _then(_$UpdatePackgeImpl(
      vrImage: null == vrImage
          ? _value.vrImage
          : vrImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>,
      featuredImage: null == featuredImage
          ? _value.featuredImage
          : featuredImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      travelPackageModel: null == travelPackageModel
          ? _value.travelPackageModel
          : travelPackageModel // ignore: cast_nullable_to_non_nullable
              as TravelPackageModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TravelPackageModelCopyWith<$Res> get travelPackageModel {
    return $TravelPackageModelCopyWith<$Res>(_value.travelPackageModel,
        (value) {
      return _then(_value.copyWith(travelPackageModel: value));
    });
  }
}

/// @nodoc

class _$UpdatePackgeImpl with DiagnosticableTreeMixin implements _UpdatePackge {
  const _$UpdatePackgeImpl(
      {required this.vrImage,
      required final List<Uint8List> images,
      required this.featuredImage,
      required this.travelPackageModel})
      : _images = images;

  @override
  final Uint8List vrImage;
  final List<Uint8List> _images;
  @override
  List<Uint8List> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final Uint8List featuredImage;
  @override
  final TravelPackageModel travelPackageModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.updatePacakge(vrImage: $vrImage, images: $images, featuredImage: $featuredImage, travelPackageModel: $travelPackageModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelEvent.updatePacakge'))
      ..add(DiagnosticsProperty('vrImage', vrImage))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('featuredImage', featuredImage))
      ..add(DiagnosticsProperty('travelPackageModel', travelPackageModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdatePackgeImpl &&
            const DeepCollectionEquality().equals(other.vrImage, vrImage) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other.featuredImage, featuredImage) &&
            (identical(other.travelPackageModel, travelPackageModel) ||
                other.travelPackageModel == travelPackageModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vrImage),
      const DeepCollectionEquality().hash(_images),
      const DeepCollectionEquality().hash(featuredImage),
      travelPackageModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdatePackgeImplCopyWith<_$UpdatePackgeImpl> get copyWith =>
      __$$UpdatePackgeImplCopyWithImpl<_$UpdatePackgeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        addPackage,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        updatePacakge,
    required TResult Function() get,
  }) {
    return updatePacakge(vrImage, images, featuredImage, travelPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult? Function()? get,
  }) {
    return updatePacakge?.call(
        vrImage, images, featuredImage, travelPackageModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (updatePacakge != null) {
      return updatePacakge(vrImage, images, featuredImage, travelPackageModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delete value) delete,
    required TResult Function(_AddPackage value) addPackage,
    required TResult Function(_UpdatePackge value) updatePacakge,
    required TResult Function(Get value) get,
  }) {
    return updatePacakge(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delete value)? delete,
    TResult? Function(_AddPackage value)? addPackage,
    TResult? Function(_UpdatePackge value)? updatePacakge,
    TResult? Function(Get value)? get,
  }) {
    return updatePacakge?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delete value)? delete,
    TResult Function(_AddPackage value)? addPackage,
    TResult Function(_UpdatePackge value)? updatePacakge,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (updatePacakge != null) {
      return updatePacakge(this);
    }
    return orElse();
  }
}

abstract class _UpdatePackge implements TravelEvent {
  const factory _UpdatePackge(
          {required final Uint8List vrImage,
          required final List<Uint8List> images,
          required final Uint8List featuredImage,
          required final TravelPackageModel travelPackageModel}) =
      _$UpdatePackgeImpl;

  Uint8List get vrImage;
  List<Uint8List> get images;
  Uint8List get featuredImage;
  TravelPackageModel get travelPackageModel;
  @JsonKey(ignore: true)
  _$$UpdatePackgeImplCopyWith<_$UpdatePackgeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetImplCopyWith<$Res> {
  factory _$$GetImplCopyWith(_$GetImpl value, $Res Function(_$GetImpl) then) =
      __$$GetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetImplCopyWithImpl<$Res>
    extends _$TravelEventCopyWithImpl<$Res, _$GetImpl>
    implements _$$GetImplCopyWith<$Res> {
  __$$GetImplCopyWithImpl(_$GetImpl _value, $Res Function(_$GetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetImpl with DiagnosticableTreeMixin implements Get {
  const _$GetImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelEvent.get()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelEvent.get'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) delete,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        addPackage,
    required TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)
        updatePacakge,
    required TResult Function() get,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? delete,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult? Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult? Function()? get,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? delete,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        addPackage,
    TResult Function(Uint8List vrImage, List<Uint8List> images,
            Uint8List featuredImage, TravelPackageModel travelPackageModel)?
        updatePacakge,
    TResult Function()? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Delete value) delete,
    required TResult Function(_AddPackage value) addPackage,
    required TResult Function(_UpdatePackge value) updatePacakge,
    required TResult Function(Get value) get,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Delete value)? delete,
    TResult? Function(_AddPackage value)? addPackage,
    TResult? Function(_UpdatePackge value)? updatePacakge,
    TResult? Function(Get value)? get,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Delete value)? delete,
    TResult Function(_AddPackage value)? addPackage,
    TResult Function(_UpdatePackge value)? updatePacakge,
    TResult Function(Get value)? get,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class Get implements TravelEvent {
  const factory Get() = _$GetImpl;
}

/// @nodoc
mixin _$TravelPackageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelPackageStateCopyWith<$Res> {
  factory $TravelPackageStateCopyWith(
          TravelPackageState value, $Res Function(TravelPackageState) then) =
      _$TravelPackageStateCopyWithImpl<$Res, TravelPackageState>;
}

/// @nodoc
class _$TravelPackageStateCopyWithImpl<$Res, $Val extends TravelPackageState>
    implements $TravelPackageStateCopyWith<$Res> {
  _$TravelPackageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl with DiagnosticableTreeMixin implements Initial {
  const _$InitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements TravelPackageState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl with DiagnosticableTreeMixin implements Loading {
  const _$LoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements TravelPackageState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuccessImpl with DiagnosticableTreeMixin implements Success {
  const _$SuccessImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.success'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success implements TravelPackageState {
  const factory Success() = _$SuccessImpl;
}

/// @nodoc
abstract class _$$TravelPackageUpdatedImplCopyWith<$Res> {
  factory _$$TravelPackageUpdatedImplCopyWith(_$TravelPackageUpdatedImpl value,
          $Res Function(_$TravelPackageUpdatedImpl) then) =
      __$$TravelPackageUpdatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelPackageUpdatedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageUpdatedImpl>
    implements _$$TravelPackageUpdatedImplCopyWith<$Res> {
  __$$TravelPackageUpdatedImplCopyWithImpl(_$TravelPackageUpdatedImpl _value,
      $Res Function(_$TravelPackageUpdatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelPackageUpdatedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageUpdated {
  const _$TravelPackageUpdatedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.updated()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.updated'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageUpdatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class TravelPackageUpdated implements TravelPackageState {
  const factory TravelPackageUpdated() = _$TravelPackageUpdatedImpl;
}

/// @nodoc
abstract class _$$TravelPackageDeletedImplCopyWith<$Res> {
  factory _$$TravelPackageDeletedImplCopyWith(_$TravelPackageDeletedImpl value,
          $Res Function(_$TravelPackageDeletedImpl) then) =
      __$$TravelPackageDeletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TravelPackageDeletedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageDeletedImpl>
    implements _$$TravelPackageDeletedImplCopyWith<$Res> {
  __$$TravelPackageDeletedImplCopyWithImpl(_$TravelPackageDeletedImpl _value,
      $Res Function(_$TravelPackageDeletedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TravelPackageDeletedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageDeleted {
  const _$TravelPackageDeletedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.deleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TravelPackageState.deleted'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageDeletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return deleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return deleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return deleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class TravelPackageDeleted implements TravelPackageState {
  const factory TravelPackageDeleted() = _$TravelPackageDeletedImpl;
}

/// @nodoc
abstract class _$$TravelPackageLoadedImplCopyWith<$Res> {
  factory _$$TravelPackageLoadedImplCopyWith(_$TravelPackageLoadedImpl value,
          $Res Function(_$TravelPackageLoadedImpl) then) =
      __$$TravelPackageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TravelPackageModel> packages});
}

/// @nodoc
class __$$TravelPackageLoadedImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageLoadedImpl>
    implements _$$TravelPackageLoadedImplCopyWith<$Res> {
  __$$TravelPackageLoadedImplCopyWithImpl(_$TravelPackageLoadedImpl _value,
      $Res Function(_$TravelPackageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$TravelPackageLoadedImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<TravelPackageModel>,
    ));
  }
}

/// @nodoc

class _$TravelPackageLoadedImpl
    with DiagnosticableTreeMixin
    implements TravelPackageLoaded {
  const _$TravelPackageLoadedImpl(
      {required final List<TravelPackageModel> packages})
      : _packages = packages;

  final List<TravelPackageModel> _packages;
  @override
  List<TravelPackageModel> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.loaded(packages: $packages)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelPackageState.loaded'))
      ..add(DiagnosticsProperty('packages', packages));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageLoadedImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPackageLoadedImplCopyWith<_$TravelPackageLoadedImpl> get copyWith =>
      __$$TravelPackageLoadedImplCopyWithImpl<_$TravelPackageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(packages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(packages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(packages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class TravelPackageLoaded implements TravelPackageState {
  const factory TravelPackageLoaded(
          {required final List<TravelPackageModel> packages}) =
      _$TravelPackageLoadedImpl;

  List<TravelPackageModel> get packages;
  @JsonKey(ignore: true)
  _$$TravelPackageLoadedImplCopyWith<_$TravelPackageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TravelPackageErrorImplCopyWith<$Res> {
  factory _$$TravelPackageErrorImplCopyWith(_$TravelPackageErrorImpl value,
          $Res Function(_$TravelPackageErrorImpl) then) =
      __$$TravelPackageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TravelPackageErrorImplCopyWithImpl<$Res>
    extends _$TravelPackageStateCopyWithImpl<$Res, _$TravelPackageErrorImpl>
    implements _$$TravelPackageErrorImplCopyWith<$Res> {
  __$$TravelPackageErrorImplCopyWithImpl(_$TravelPackageErrorImpl _value,
      $Res Function(_$TravelPackageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TravelPackageErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TravelPackageErrorImpl
    with DiagnosticableTreeMixin
    implements TravelPackageError {
  const _$TravelPackageErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TravelPackageState.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TravelPackageState.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TravelPackageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TravelPackageErrorImplCopyWith<_$TravelPackageErrorImpl> get copyWith =>
      __$$TravelPackageErrorImplCopyWithImpl<_$TravelPackageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() updated,
    required TResult Function() deleted,
    required TResult Function(List<TravelPackageModel> packages) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? updated,
    TResult? Function()? deleted,
    TResult? Function(List<TravelPackageModel> packages)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? updated,
    TResult Function()? deleted,
    TResult Function(List<TravelPackageModel> packages)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Success value) success,
    required TResult Function(TravelPackageUpdated value) updated,
    required TResult Function(TravelPackageDeleted value) deleted,
    required TResult Function(TravelPackageLoaded value) loaded,
    required TResult Function(TravelPackageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Success value)? success,
    TResult? Function(TravelPackageUpdated value)? updated,
    TResult? Function(TravelPackageDeleted value)? deleted,
    TResult? Function(TravelPackageLoaded value)? loaded,
    TResult? Function(TravelPackageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Success value)? success,
    TResult Function(TravelPackageUpdated value)? updated,
    TResult Function(TravelPackageDeleted value)? deleted,
    TResult Function(TravelPackageLoaded value)? loaded,
    TResult Function(TravelPackageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class TravelPackageError implements TravelPackageState {
  const factory TravelPackageError({required final String message}) =
      _$TravelPackageErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TravelPackageErrorImplCopyWith<_$TravelPackageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
