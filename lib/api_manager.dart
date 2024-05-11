import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:score_update/footballmodel.dart';

class FootballApi {
  static String baseUrl = "https://v3.football.api-sports.io/fixtures";
  late String liveMatches = "$baseUrl?live=all" ;
  late String laLigaMatches = "$baseUrl?season=2022&league=140" ;
  late String events = "$baseUrl/events" ;

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "8a256ad9b94a08eb1b6a8749bfe2b63a"
  };

    Future<List<FootballMatch>> getAllMatches(String apiUrl) async {
        Response res = await get(Uri.parse(apiUrl), headers: headers);
        var body;

        if (res.statusCode == 200) {
          // this mean that we are connected to the data base
          body = jsonDecode(res.body);
          List<dynamic> matchesList =  body['response'];
          List<FootballMatch> matches = matchesList
              .map((dynamic item) {
                return FootballMatch.fromJson(item);
              })
              .toList();

          return matches;
        }
        return [];
    }
}
