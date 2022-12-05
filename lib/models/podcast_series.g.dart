// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PodcastSeries _$$_PodcastSeriesFromJson(Map<String, dynamic> json) =>
    _$_PodcastSeries(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      datePublished: json['datePublished'] as int?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authorName: json['authorName'] as String?,
    );

Map<String, dynamic> _$$_PodcastSeriesToJson(_$_PodcastSeries instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'datePublished': instance.datePublished,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'language': instance.language,
      'genres': instance.genres,
      'authorName': instance.authorName,
    };
