import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kiku/models/podcast_series.dart';

part 'podcast_episode.freezed.dart';

part 'podcast_episode.g.dart';

@freezed
class PodcastEpisode with _$PodcastEpisode {
  const PodcastEpisode._();
  const factory PodcastEpisode({
    required String uuid,
    required String name,
    required int datePublished,
    String? description,
    String? imageUrl,
    String? language,
    List<String>? genres,
    String? authorName,
    String? audioUrl,
    int? seasonNumber,
    int? episodeNumber,
    required int duration,
    required PodcastSeries podcastSeries,
  }) = _PodcastEpisode;

  factory PodcastEpisode.fromJson(Map<String, Object?> json) =>
      _$PodcastEpisodeFromJson(json);

  String printDuration() {
    Duration duration = Duration(seconds: this.duration);
    if (duration.inHours == 0) {
      return "${duration.inMinutes.remainder(60)}min";
    }
    return "${(duration.inHours)}h, ${duration.inMinutes.remainder(60)}min";
  }
}
