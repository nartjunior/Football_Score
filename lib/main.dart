import 'dart:html';

import 'package:flutter/material.dart';
import 'package:score_update/api_manager.dart';
import 'package:score_update/page_body.dart';

import 'matches.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Update',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FootballApp(title: 'Score Update'),
    );
  }
}

class FootballApp extends StatefulWidget {
  const FootballApp({super.key, required this.title});

  final String title;

  @override
  State<FootballApp> createState() => _FootballAppState();
}

class _FootballAppState extends State<FootballApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XFFFAFAFA),
        appBar: AppBar(
          backgroundColor: const Color(0XFFFAFAFA),
          elevation: 0,
          title: const Text(
            "Score Update",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Matches(url: FootballApi().liveMatches,)));
                  },
                  child: const Text("Live Matches")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Matches(url: FootballApi().laLigaMatches,)));
                  },
                  child: const Text("La Liga")),
            ],
          ),
        ));
  }
}
