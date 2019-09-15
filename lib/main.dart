import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/widgets/screens/AnimalDetailScreen.dart';
import 'package:mobile/widgets/screens/AnimalListScreen.dart';
import 'package:mobile/widgets/screens/NFCReader.dart';
import 'package:mobile/widgets/screens/SpcaListScreen.dart';
import 'package:mobile/widgets/screens/WalkingStartedScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab on a dog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SpcaListScreen(),
    );
  }
}

const data = {
  "animal": "canine",
  "lastWalked": 1568494598504,
  "breed": "Labrador Retriever",
  "age": "2",
  "sex": "female",
  "color": "brown",
  "temperament": "",
  "minTimePerDay": "1H",
  "likesToWalkWith": "Daniel",
  "allergies": "Nuts",
  "notes": "",
  "map": ""
};
