import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../models/podcast_episode.dart';
import '../models/podcast_series.dart';
import '../services/taddy.dart';
import '../widgets/search_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: SearchBar(
                onSearch: (searchTerm) async {
                  // final taddy = Taddy();
                  // final json = await taddy.search(searchTerm);

                  // List<PodcastSeries> podcastSeries = [];
                  // for (final podcastSeriesJson in json['data']
                  //     ['searchForTerm']['podcastSeries']) {
                  //   podcastSeries
                  //       .add(PodcastSeries.fromJson(podcastSeriesJson));
                  // }

                  // List<PodcastEpisode> podcastEpisodes = [];
                  // for (final podcastEpisodesJson in json['data']
                  //     ['searchForTerm']['podcastEpisodes']) {
                  //   podcastEpisodes
                  //       .add(PodcastEpisode.fromJson(podcastEpisodesJson));
                  // }

                  // print(podcastSeries);
                  // print(podcastEpisodes);
                },
                onCancel: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ToggleSwitch(
              minWidth: double.infinity,
              initialLabelIndex: 0,
              totalSwitches: 2,
              labels: const ['Episodes', 'Series'],
              onToggle: (index) {
                print('switched to: $index');
              },
            ),
          ],
        ),
      ),
    );
  }
}
