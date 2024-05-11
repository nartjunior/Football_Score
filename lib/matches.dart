import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';

import 'api_manager.dart';
import 'events.dart';
import 'page_body.dart';

class Matches extends StatelessWidget {
  final String url;

  Matches({super.key, required this.url});

  final FootballApi footballApi = FootballApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          events;
        },
        child: FutureBuilder(
          future: footballApi.getAllMatches(url),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return PageBody(snapshot.data!);
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
