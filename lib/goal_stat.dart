import 'package:flutter/cupertino.dart';

Widget goalStat(int expandedTime, int homeGoal, int awayGoal) {
  var home = homeGoal;
  var away = awayGoal;
  var elapsed = expandedTime;

  return Expanded(
      child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "$elapsed'",
        style: const TextStyle(fontSize: 30),
      ),
      Expanded(
          child: Center(
        child: Text(
          "$home - $away",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 36),
        ),
      ))
    ],
  ));
}
