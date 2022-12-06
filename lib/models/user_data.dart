import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';

part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String uid,
    required List<String> likedPodcastSeries,
    required List<String> likedPodcastEpisodes,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);

  factory UserData.fromUid(String uid) => UserData(
        uid: uid,
        likedPodcastSeries: [],
        likedPodcastEpisodes: [],
      );
}
