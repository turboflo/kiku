import 'dart:async';

import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'dart:convert';

class Taddy {
  Future<Map<String, dynamic>> _query(String query) async {
    var headers = {
      'Content-Type': 'application/json',
      'X-USER-ID': dotenv.env['X-USER-ID']!,
      'X-API-KEY': dotenv.env['X-API-KEY']!,
    };
    var data = '{ "query": "${query.replaceAll("\n", " ")}" }';
    var url = Uri.parse('https://api.taddy.org');
    var res = await http.post(url, headers: headers, body: data);
    if (res.statusCode != 200) {
      throw Exception('http.post error: statusCode= ${res.statusCode}');
    }
    Map<String, dynamic> json = jsonDecode(res.body);
    return json;
  }

  Future<Map<String, dynamic>> search(String searchTerm) {
    String formattedSearchTerm = '\\"$searchTerm\\"';
    return _query('''
{
  searchForTerm(term: $formattedSearchTerm, filterForTypes: [PODCASTSERIES, PODCASTEPISODE]) {
    searchId
    podcastSeries {
      uuid
      name
      datePublished
      description(shouldStripHtmlTags: true)
      imageUrl
      language
      genres
      authorName
    }
    podcastEpisodes {
      uuid
      name
      audioUrl
      datePublished
      description
      imageUrl
      duration
      seasonNumber
      episodeNumber
      podcastSeries {
        uuid
        name
        datePublished
        description(shouldStripHtmlTags: true)
        imageUrl
        language
        genres
        authorName
      }
    }
  }
}
''');
  }
}
