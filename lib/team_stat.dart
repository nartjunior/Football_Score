import 'package:flutter/cupertino.dart';

Widget teamStat(String team, String logoUrl, String teamName) {
  return Expanded(
      child: Column(
        children: [
          Text(
            team,
            style: const TextStyle(
              fontSize: 20
            ),
          ),

          const SizedBox(height: 10,),
          Expanded(
              child: Image.network(logoUrl,width: 54,)
          ),
          const SizedBox(height: 10,),
          Text(
            teamName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 18
            ),
          )
        ],
      )
  );
}