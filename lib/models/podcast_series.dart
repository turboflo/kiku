import 'package:freezed_annotation/freezed_annotation.dart';

part 'podcast_series.freezed.dart';

part 'podcast_series.g.dart';

@freezed
class PodcastSeries with _$PodcastSeries {
  const factory PodcastSeries({
    required String uuid,
    required String name,
    int? datePublished,
    String? description,
    String? imageUrl,
    required String language,
    List<String>? genres,
    String? authorName,
  }) = _PodcastSeries;

  factory PodcastSeries.fromJson(Map<String, Object?> json) =>
      _$PodcastSeriesFromJson(json);
}
