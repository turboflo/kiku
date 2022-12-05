// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_episode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PodcastEpisode _$$_PodcastEpisodeFromJson(Map<String, dynamic> json) =>
    _$_PodcastEpisode(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      datePublished: json['datePublished'] as int,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      language: json['language'] as String?,
      genres:
          (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
      authorName: json['authorName'] as String?,
      audioUrl: json['audioUrl'] as String?,
      seasonNumber: json['seasonNumber'] as int?,
      episodeNumber: json['episodeNumber'] as int?,
      duration: json['duration'] as int,
      podcastSeries:
          PodcastSeries.fromJson(json['podcastSeries'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PodcastEpisodeToJson(_$_PodcastEpisode instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'datePublished': instance.datePublished,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'language': instance.language,
      'genres': instance.genres,
      'authorName': instance.authorName,
      'audioUrl': instance.audioUrl,
      'seasonNumber': instance.seasonNumber,
      'episodeNumber': instance.episodeNumber,
      'duration': instance.duration,
      'podcastSeries': instance.podcastSeries,
    };
