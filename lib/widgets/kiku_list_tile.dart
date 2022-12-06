import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiku/models/podcast_episode.dart';
import 'package:kiku/models/podcast_series.dart';
import 'package:kiku/services/provider.dart';

const String noImageUrl =
    'https://via.placeholder.com/200x200.png?text=Podcast';

class KikuListTile extends ConsumerWidget {
  const KikuListTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.additionalInfo,
    this.podcastEpisode,
    this.podcastSeries,
  });

  factory KikuListTile.fromPodcastEpisode(PodcastEpisode podcastEpisode) {
    return KikuListTile(
      imageUrl: podcastEpisode.imageUrl ??
          podcastEpisode.podcastSeries.imageUrl ??
          noImageUrl,
      title: podcastEpisode.name,
      additionalInfo:
          '${podcastEpisode.printDuration()} - ${podcastEpisode.podcastSeries.name}',
      podcastEpisode: podcastEpisode,
    );
  }

  factory KikuListTile.fromPodcastSeries(PodcastSeries podcastSeries) {
    return KikuListTile(
      imageUrl: podcastSeries.imageUrl ?? noImageUrl,
      title: podcastSeries.name,
      additionalInfo: podcastSeries.authorName ?? '',
      podcastSeries: podcastSeries,
    );
  }

  final String imageUrl;
  final String title;
  final String additionalInfo;
  final PodcastEpisode? podcastEpisode;
  final PodcastSeries? podcastSeries;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _database = ref.watch(databaseProvider);
    final _userData = ref.watch(userDataProvider).value;
    bool isLiked = false;

    void addLike() {
      if (_database != null && _userData != null) {
        if (podcastSeries != null) {
          _database.setPodcastSeries(podcastSeries!);
          final updatedUserData = _userData.copyWith(
            likedPodcastSeries: [
              ..._userData.likedPodcastSeries,
              podcastSeries!.uuid,
            ],
          );
          _database.setUserData(updatedUserData);
        }
        if (podcastEpisode != null) {
          _database.setPodcastEpisode(podcastEpisode!);
          final updatedUserData = _userData.copyWith(
            likedPodcastSeries: [
              ..._userData.likedPodcastEpisodes,
              podcastEpisode!.uuid,
            ],
          );
          _database.setUserData(updatedUserData);
        }
      }
    }

    void removeLike() {
      if (_database != null && _userData != null) {
        if (podcastSeries != null) {
          List<String> likedPodcastSeries =
              _userData.likedPodcastSeries.toList();
          likedPodcastSeries.remove(podcastSeries!.uuid);
          final updatedUserData = _userData.copyWith(
            likedPodcastSeries: likedPodcastSeries,
          );
          _database.setUserData(updatedUserData);
        }
        if (podcastEpisode != null) {
          List<String> likedPodcastEpisodes =
              _userData.likedPodcastEpisodes.toList();
          likedPodcastEpisodes.remove(podcastSeries!.uuid);
          final updatedUserData = _userData.copyWith(
            likedPodcastEpisodes: likedPodcastEpisodes,
          );
          _database.setUserData(updatedUserData);
        }
      }
    }

    if (_userData != null) {
      if (podcastSeries != null) {
        isLiked = _userData.likedPodcastSeries.contains(podcastSeries!.uuid);
      }
      if (podcastEpisode != null) {
        isLiked = _userData.likedPodcastEpisodes.contains(podcastEpisode!.uuid);
      }
    }

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.grey.shade100),
        ),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: CachedNetworkImage(
                fadeInDuration: const Duration(milliseconds: 300),
                imageUrl: imageUrl,
                placeholder: (context, url) => Container(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  additionalInfo,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: isLiked ? removeLike : addLike,
            icon: FaIcon(
              isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
              color: isLiked ? Theme.of(context).primaryColor : Colors.grey,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
