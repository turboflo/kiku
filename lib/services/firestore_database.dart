import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kiku/models/podcast_episode.dart';

import '../models/podcast_series.dart';
import '../models/user_data.dart';

class FirestoreDatabase {
  final String uid;

  final _userDataRef = FirebaseFirestore.instance
      .collection('user-data')
      .withConverter<UserData>(
        fromFirestore: (snapshots, _) => UserData.fromJson(snapshots.data()!),
        toFirestore: (userData, _) => userData.toJson(),
      );

  final _podcastSeriesRef = FirebaseFirestore.instance
      .collection('podcast-series')
      .withConverter<PodcastSeries>(
        fromFirestore: (snapshots, _) =>
            PodcastSeries.fromJson(snapshots.data()!),
        toFirestore: (podcastSeries, _) => podcastSeries.toJson(),
      );

  final _podcastEpisodeRef = FirebaseFirestore.instance
      .collection('podcast-episode')
      .withConverter<PodcastEpisode>(
        fromFirestore: (snapshots, _) =>
            PodcastEpisode.fromJson(snapshots.data()!),
        toFirestore: (podcastEpisode, _) => podcastEpisode.toJson(),
      );

  FirestoreDatabase({required this.uid});

  Future<void> setUserData(UserData userData) async {
    if (userData.uid == uid) {
      await _userDataRef
          .doc(userData.uid)
          .set(userData, SetOptions(merge: true));
    }
  }

  Future<void> setInitialUserData() =>
      _userDataRef.doc(uid).set(UserData.fromUid(uid), SetOptions(merge: true));

  Stream<UserData?> streamUserData() =>
      _userDataRef.doc(uid).snapshots().map((snapshot) => snapshot.data());

  Future<void> setPodcastSeries(PodcastSeries podcastSeries) =>
      _podcastSeriesRef.doc(podcastSeries.uuid).set(podcastSeries);

  Future<void> setPodcastEpisode(PodcastEpisode podcastEpisode) =>
      _podcastEpisodeRef.doc(podcastEpisode.uuid).set(podcastEpisode);
}
