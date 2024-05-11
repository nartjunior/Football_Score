import 'package:flutter/material.dart';
import 'package:score_update/footballmodel.dart';

Widget matchTile(FootballMatch match) {
  int? homeGoal = match.goal.home;
  int? awayGoal = match.goal.away;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child:Text(
                match.home.name,
                textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16
                  ),
              )
          ),
          Image.network(
            match.home.logoUrl,
            width: 36,
          ),
          Expanded(
              child: Text(
                "$homeGoal - $awayGoal",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16
                ),
              )
          ),
          Image.network(
            match.away.logoUrl,
            width: 36,
          ),
          Expanded(
              child:Text(
                match.away.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16
                ),
              )
          ),
        ],
      ),
    );
}