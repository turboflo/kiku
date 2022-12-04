import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kiku/models/podcast_series.dart';

part 'podcast_episode.freezed.dart';

part 'podcast_episode.g.dart';

@freezed
class PodcastEpisode with _$PodcastEpisode {
  const factory PodcastEpisode({
    required String uuid,
    required String name,
    required int datePublished,
    String? description,
    String? imageUrl,
    String? language,
    List<String>? genres,
    String? authorName,
    required String audioUrl,
    int? seasonNumber,
    int? episodeNumber,
    required int duration,
    required PodcastSeries podcastSeries,
  }) = _PodcastEpisode;

  factory PodcastEpisode.fromJson(Map<String, Object?> json) =>
      _$PodcastEpisodeFromJson(json);
}
