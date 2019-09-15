import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/uils/utils.dart';
import 'package:mobile/widgets/screens/AnimalSummaryCard.dart';

class WalkingStartedScreen extends StatelessWidget {
  final List dogs;
  WalkingStartedScreen(this.dogs);
  void onCardTapped(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    var dogCards = dogs.map((id) {
      return AnimalSummaryCard(
        id: Utils.getDogInfo(id)['id'],
        imgUrl: Utils.getDogInfo(id)['imgUrl'],
        dogName: Utils.getDogInfo(id)['dogName'],
        breed: Utils.getDogInfo(id)['breed'],
        age: 1,
      );
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Walking Started'),
      ),
      body: ListView(
        children: <Widget>[
          ...dogCards
        ],
      ),
    );
  }
}
