import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_series.freezed.dart';

part 'podcast_series.g.dart';

@freezed
class PodcastSeries with _$PodcastSeries {
  const factory PodcastSeries({
    required String uuid,
    required String name,
    required int datePublished,
    String? description,
    required String imageUrl,
    required String language,
    List<String>? genres,
    String? authorName,
  }) = _PodcastSeries;

  factory PodcastSeries.fromJson(Map<String, Object?> json) =>
      _$PodcastSeriesFromJson(json);
}
