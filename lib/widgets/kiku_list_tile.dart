import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kiku/models/podcast_episode.dart';
import 'package:kiku/models/podcast_series.dart';

const String noImageUrl =
    'https://via.placeholder.com/200x200.png?text=Podcast';

class KikuListTile extends StatelessWidget {
  const KikuListTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.additionalInfo,
  });

  factory KikuListTile.fromPodcastEpisode(PodcastEpisode podcastEpisode) {
    return KikuListTile(
      imageUrl: podcastEpisode.imageUrl ??
          podcastEpisode.podcastSeries.imageUrl ??
          noImageUrl,
      title: podcastEpisode.name,
      additionalInfo:
          '${podcastEpisode.printDuration()} - ${podcastEpisode.podcastSeries.name}',
    );
  }

  factory KikuListTile.fromPodcastSeries(PodcastSeries podcastSeries) {
    return KikuListTile(
      imageUrl: podcastSeries.imageUrl ?? noImageUrl,
      title: podcastSeries.name,
      additionalInfo: podcastSeries.authorName ?? '',
    );
  }

  // final PodcastEpisode podcastEpisode;
  final String imageUrl;
  final String title;
  final String additionalInfo;

  @override
  Widget build(BuildContext context) {
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
          const FaIcon(
            FontAwesomeIcons.heart,
            color: Colors.grey,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
