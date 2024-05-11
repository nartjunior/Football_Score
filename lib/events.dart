import 'package:flutter/material.dart';
import 'package:score_update/footballmodel.dart';

Widget events(Events events) {
  int? fixture = events.fixture;
  int? team = events.team;
  int? player = events.player;
  String? type = events.type;

  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            child:Text(
              fixture.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
              ),
            )
        ),
        Expanded(
            child:Text(
              team.toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16
              ),
            )
        ),
      ],
    ),
  );

}
