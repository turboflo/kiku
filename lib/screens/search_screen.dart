import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kiku/services/firestore_database.dart';
import 'package:kiku/services/provider.dart';
import 'package:kiku/widgets/kiku_list_tile.dart';
import 'package:kiku/widgets/kiku_loader.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:loading_indicator/loading_indicator.dart';

import '../models/podcast_episode.dart';
import '../models/podcast_series.dart';
import '../services/taddy.dart';
import '../widgets/search_bar.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  bool isLoading = false;
  bool showEpisodes = true;
  bool hasSearched = false;
  List<PodcastEpisode> episodes = [];
  List<PodcastSeries> series = [];

  FirestoreDatabase? _database;

  @override
  Widget build(BuildContext context) {
    _database = ref.watch(databaseProvider);
    return KikuLoader(
      isLoading: _database == null,
      child: SafeArea(
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
              child: isLoading
                  ? const Center(
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballScale,
                      ),
                    )
                  : getSearchResult(),
            )
          ],
        ),
      ),
    );
  }

  Widget getSearchResult() {
    if (showEpisodes && episodes.isEmpty && hasSearched) {
      if (series.isNotEmpty) {
        setState(() => showEpisodes = false);
      }
      return const Center(child: Text('No Episodes found :('));
    }
    if (!showEpisodes && series.isEmpty && hasSearched) {
      if (episodes.isNotEmpty) {
        setState(() => showEpisodes = true);
      }
      return const Center(child: Text('No Series found :('));
    }
    return ListView.builder(
        itemCount: showEpisodes ? episodes.length : series.length,
        itemBuilder: (context, index) => showEpisodes
            ? KikuListTile.fromPodcastEpisode(episodes[index])
            : KikuListTile.fromPodcastSeries(series[index]));
  }

  Future<void> _search(String searchTerm) async {
    setState(() => isLoading = true);
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
      isLoading = false;
      hasSearched = true;
      episodes = podcastEpisodes;
      series = podcastSeries;
    });
  }
}
