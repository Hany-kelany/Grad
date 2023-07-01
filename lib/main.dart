import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'OnBoarding-Hany/OnBoarding.dart';
import 'Output/Output.dart';

class Pair<T1, T2> {
  final T1 first;
  final T2 second;

  Pair(this.first, this.second);
}

List<String> dangerLabelsList = [];
List<String> normalDangerList = [];

Future<void> main() async {
  runApp(MyApp());
  String assetPathDanger = "assets/RedList.txt";
  String fileDangerContent = await rootBundle.loadString(assetPathDanger);
  dangerLabelsList = fileDangerContent.split('\n');
  for (int i = 0; i < dangerLabelsList.length; i++) {
    dangerLabelsList[i] = dangerLabelsList[i].trim();
  }
  dangerLabelsList.sort();

  String assetPathNormalDanger = "assets/NormalList.txt";
  String fileNormalDangerContent =
      await rootBundle.loadString(assetPathNormalDanger);
  normalDangerList = fileNormalDangerContent.split('\n');
  for (int i = 0; i < normalDangerList.length; i++) {
    normalDangerList[i] = normalDangerList[i].trim();
  }
  normalDangerList.sort();

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}
