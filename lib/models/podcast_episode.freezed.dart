// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'podcast_episode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PodcastEpisode _$PodcastEpisodeFromJson(Map<String, dynamic> json) {
  return _PodcastEpisode.fromJson(json);
}

/// @nodoc
mixin _$PodcastEpisode {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get datePublished => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get language => throw _privateConstructorUsedError;
  List<String>? get genres => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  int? get seasonNumber => throw _privateConstructorUsedError;
  int? get episodeNumber => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  PodcastSeries get podcastSeries => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PodcastEpisodeCopyWith<PodcastEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PodcastEpisodeCopyWith<$Res> {
  factory $PodcastEpisodeCopyWith(
          PodcastEpisode value, $Res Function(PodcastEpisode) then) =
      _$PodcastEpisodeCopyWithImpl<$Res, PodcastEpisode>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      int datePublished,
      String? description,
      String? imageUrl,
      String? language,
      List<String>? genres,
      String? authorName,
      String audioUrl,
      int? seasonNumber,
      int? episodeNumber,
      int duration,
      PodcastSeries podcastSeries});

  $PodcastSeriesCopyWith<$Res> get podcastSeries;
}

/// @nodoc
class _$PodcastEpisodeCopyWithImpl<$Res, $Val extends PodcastEpisode>
    implements $PodcastEpisodeCopyWith<$Res> {
  _$PodcastEpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? datePublished = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? authorName = freezed,
    Object? audioUrl = null,
    Object? seasonNumber = freezed,
    Object? episodeNumber = freezed,
    Object? duration = null,
    Object? podcastSeries = null,
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
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as int,
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
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      podcastSeries: null == podcastSeries
          ? _value.podcastSeries
          : podcastSeries // ignore: cast_nullable_to_non_nullable
              as PodcastSeries,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PodcastSeriesCopyWith<$Res> get podcastSeries {
    return $PodcastSeriesCopyWith<$Res>(_value.podcastSeries, (value) {
      return _then(_value.copyWith(podcastSeries: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PodcastEpisodeCopyWith<$Res>
    implements $PodcastEpisodeCopyWith<$Res> {
  factory _$$_PodcastEpisodeCopyWith(
          _$_PodcastEpisode value, $Res Function(_$_PodcastEpisode) then) =
      __$$_PodcastEpisodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      int datePublished,
      String? description,
      String? imageUrl,
      String? language,
      List<String>? genres,
      String? authorName,
      String audioUrl,
      int? seasonNumber,
      int? episodeNumber,
      int duration,
      PodcastSeries podcastSeries});

  @override
  $PodcastSeriesCopyWith<$Res> get podcastSeries;
}

/// @nodoc
class __$$_PodcastEpisodeCopyWithImpl<$Res>
    extends _$PodcastEpisodeCopyWithImpl<$Res, _$_PodcastEpisode>
    implements _$$_PodcastEpisodeCopyWith<$Res> {
  __$$_PodcastEpisodeCopyWithImpl(
      _$_PodcastEpisode _value, $Res Function(_$_PodcastEpisode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? datePublished = null,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? language = freezed,
    Object? genres = freezed,
    Object? authorName = freezed,
    Object? audioUrl = null,
    Object? seasonNumber = freezed,
    Object? episodeNumber = freezed,
    Object? duration = null,
    Object? podcastSeries = null,
  }) {
    return _then(_$_PodcastEpisode(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      datePublished: null == datePublished
          ? _value.datePublished
          : datePublished // ignore: cast_nullable_to_non_nullable
              as int,
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
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      seasonNumber: freezed == seasonNumber
          ? _value.seasonNumber
          : seasonNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      episodeNumber: freezed == episodeNumber
          ? _value.episodeNumber
          : episodeNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      podcastSeries: null == podcastSeries
          ? _value.podcastSeries
          : podcastSeries // ignore: cast_nullable_to_non_nullable
              as PodcastSeries,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PodcastEpisode extends _PodcastEpisode {
  const _$_PodcastEpisode(
      {required this.uuid,
      required this.name,
      required this.datePublished,
      this.description,
      this.imageUrl,
      this.language,
      final List<String>? genres,
      this.authorName,
      required this.audioUrl,
      this.seasonNumber,
      this.episodeNumber,
      required this.duration,
      required this.podcastSeries})
      : _genres = genres,
        super._();

  factory _$_PodcastEpisode.fromJson(Map<String, dynamic> json) =>
      _$$_PodcastEpisodeFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final int datePublished;
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
  final String audioUrl;
  @override
  final int? seasonNumber;
  @override
  final int? episodeNumber;
  @override
  final int duration;
  @override
  final PodcastSeries podcastSeries;

  @override
  String toString() {
    return 'PodcastEpisode(uuid: $uuid, name: $name, datePublished: $datePublished, description: $description, imageUrl: $imageUrl, language: $language, genres: $genres, authorName: $authorName, audioUrl: $audioUrl, seasonNumber: $seasonNumber, episodeNumber: $episodeNumber, duration: $duration, podcastSeries: $podcastSeries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PodcastEpisode &&
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
                other.authorName == authorName) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.seasonNumber, seasonNumber) ||
                other.seasonNumber == seasonNumber) &&
            (identical(other.episodeNumber, episodeNumber) ||
                other.episodeNumber == episodeNumber) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.podcastSeries, podcastSeries) ||
                other.podcastSeries == podcastSeries));
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
      authorName,
      audioUrl,
      seasonNumber,
      episodeNumber,
      duration,
      podcastSeries);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PodcastEpisodeCopyWith<_$_PodcastEpisode> get copyWith =>
      __$$_PodcastEpisodeCopyWithImpl<_$_PodcastEpisode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PodcastEpisodeToJson(
      this,
    );
  }
}

abstract class _PodcastEpisode extends PodcastEpisode {
  const factory _PodcastEpisode(
      {required final String uuid,
      required final String name,
      required final int datePublished,
      final String? description,
      final String? imageUrl,
      final String? language,
      final List<String>? genres,
      final String? authorName,
      required final String audioUrl,
      final int? seasonNumber,
      final int? episodeNumber,
      required final int duration,
      required final PodcastSeries podcastSeries}) = _$_PodcastEpisode;
  const _PodcastEpisode._() : super._();

  factory _PodcastEpisode.fromJson(Map<String, dynamic> json) =
      _$_PodcastEpisode.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  int get datePublished;
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
  String get audioUrl;
  @override
  int? get seasonNumber;
  @override
  int? get episodeNumber;
  @override
  int get duration;
  @override
  PodcastSeries get podcastSeries;
  @override
  @JsonKey(ignore: true)
  _$$_PodcastEpisodeCopyWith<_$_PodcastEpisode> get copyWith =>
      throw _privateConstructorUsedError;
}
