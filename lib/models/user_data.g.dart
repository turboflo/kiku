// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      uid: json['uid'] as String,
      likedPodcastSeries: (json['likedPodcastSeries'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      likedPodcastEpisodes: (json['likedPodcastEpisodes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'likedPodcastSeries': instance.likedPodcastSeries,
      'likedPodcastEpisodes': instance.likedPodcastEpisodes,
    };
