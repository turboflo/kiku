import 'package:flutter/material.dart';
import 'package:kiku/widgets/kiku_list_tile.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../models/podcast_episode.dart';
import '../models/podcast_series.dart';
import '../services/taddy.dart';
import '../widgets/search_bar.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool showEpisodes = true;
  List<PodcastEpisode> episodes = [];
  List<PodcastSeries> series = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              child: SearchBar(
                onSearch: _search,
                onCancel: () {},
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ToggleSwitch(
            minWidth: double.infinity,
            inactiveBgColor: Colors.grey.shade300,
            initialLabelIndex: showEpisodes ? 0 : 1,
            totalSwitches: 2,
            labels: const ['Episodes', 'Series'],
            onToggle: (index) => setState(() => showEpisodes = index == 0),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
                itemCount: showEpisodes ? episodes.length : series.length,
                itemBuilder: (context, index) => showEpisodes
                    ? KikuListTile.fromPodcastEpisode(episodes[index])
                    : KikuListTile.fromPodcastSeries(series[index])),
          )
        ],
      ),
    );
  }

  Future<void> _search(String searchTerm) async {
    final taddy = Taddy();
    final json = await taddy.search(searchTerm);

    List<PodcastSeries> podcastSeries = [];
    for (final podcastSeriesJson in json['data']['searchForTerm']
        ['podcastSeries']) {
      podcastSeries.add(PodcastSeries.fromJson(podcastSeriesJson));
    }

    List<PodcastEpisode> podcastEpisodes = [];
    for (final podcastEpisodesJson in json['data']['searchForTerm']
        ['podcastEpisodes']) {
      podcastEpisodes.add(PodcastEpisode.fromJson(podcastEpisodesJson));
    }

    setState(() {
      episodes = podcastEpisodes;
      series = podcastSeries;
    });
  }
}
