// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PodcastSeries _$PodcastSeriesFromJson(Map<String, dynamic> json) {
  return _PodcastSeries.fromJson(json);
}

/// @nodoc
mixin _$PodcastSeries {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get datePublished => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastSeriesCopyWith<PodcastSeries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastSeriesCopyWith<$Res> {
  factory $PodcastSeriesCopyWith(
          PodcastSeries value, $Res Function(PodcastSeries) then) =
      _$PodcastSeriesCopyWithImpl<$Res, PodcastSeries>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      int? datePublished,
      String? description,
      String? imageUrl,
      String? language,
      List<String>? genres,
      String? authorName});
}

/// @nodoc
class _$PodcastSeriesCopyWithImpl<$Res, $Val extends PodcastSeries>
    implements $PodcastSeriesCopyWith<$Res> {
  _$PodcastSeriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? datePublished = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? authorName = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: freezed == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PodcastSeriesCopyWith<$Res>
    implements $PodcastSeriesCopyWith<$Res> {
  factory _$$_PodcastSeriesCopyWith(
          _$_PodcastSeries value, $Res Function(_$_PodcastSeries) then) =
      __$$_PodcastSeriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      int? datePublished,
      String? description,
      String? imageUrl,
      String? language,
      List<String>? genres,
      String? authorName});
}

/// @nodoc
class __$$_PodcastSeriesCopyWithImpl<$Res>
    extends _$PodcastSeriesCopyWithImpl<$Res, _$_PodcastSeries>
    implements _$$_PodcastSeriesCopyWith<$Res> {
  __$$_PodcastSeriesCopyWithImpl(
      _$_PodcastSeries _value, $Res Function(_$_PodcastSeries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? datePublished = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? authorName = freezed,
  }) {
    return _then(_$_PodcastSeries(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: freezed == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      authorName: freezed == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodcastSeries implements _PodcastSeries {
  const _$_PodcastSeries(
      {required this.uuid,
      required this.name,
      this.datePublished,
      this.description,
      this.imageUrl,
      this.language,
      final List<String>? genres,
      this.authorName})
      : _genres = genres;

  factory _$_PodcastSeries.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastSeriesFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final int? datePublished;
  @override
  final String? description;
  @override
  final String? imageUrl;
  @override
  final String? language;
  final List<String>? _genres;
  @override
  List<String>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? authorName;

  @override
  String toString() {
    return 'PodcastSeries(uuid: $uuid, name: $name, datePublished: $datePublished, description: $description, imageUrl: $imageUrl, language: $language, genres: $genres, authorName: $authorName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastSeries &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.datePublished, datePublished) ||
                other.datePublished == datePublished) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.language, language) ||
                other.language == language) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      name,
      datePublished,
      description,
      imageUrl,
      language,
      const DeepCollectionEquality().hash(_genres),
      authorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodcastSeriesCopyWith<_$_PodcastSeries> get copyWith =>
      __$$_PodcastSeriesCopyWithImpl<_$_PodcastSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastSeriesToJson(
      this,
    );
  }
}

abstract class _PodcastSeries implements PodcastSeries {
  const factory _PodcastSeries(
      {required final String uuid,
      required final String name,
      final int? datePublished,
      final String? description,
      final String? imageUrl,
      final String? language,
      final List<String>? genres,
      final String? authorName}) = _$_PodcastSeries;

  factory _PodcastSeries.fromJson(Map<String, dynamic> json) =
      _$_PodcastSeries.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  int? get datePublished;
  @override
  String? get description;
  @override
  String? get imageUrl;
  @override
  String? get language;
  @override
  List<String>? get genres;
  @override
  String? get authorName;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastSeriesCopyWith<_$_PodcastSeries> get copyWith =>
      throw _privateConstructorUsedError;
}
