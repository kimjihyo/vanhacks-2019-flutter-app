import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/uils/utils.dart';
import 'package:mobile/widgets/screens/AnimalSummaryCard.dart';

class AnimalListScreen extends StatelessWidget {
  final String branchName;
  AnimalListScreen(this.branchName);
  void onCardTapped(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    print(Utils.getDogInfo(1));
    return Scaffold(
      appBar: AppBar(
        title: Text(this.branchName),
      ),
      body: ListView(
        children: <Widget>[
          AnimalSummaryCard(
            id: Utils.getDogInfo(0)['id'],
            imgUrl: Utils.getDogInfo(0)['imgUrl'],
            dogName: Utils.getDogInfo(0)['dogName'],
            breed: Utils.getDogInfo(0)['breed'],
            age: Utils.getDogInfo(0)['age'],
          ),
          AnimalSummaryCard(
            id: Utils.getDogInfo(1)['id'],
            imgUrl: Utils.getDogInfo(1)['imgUrl'],
            dogName: Utils.getDogInfo(1)['dogName'],
            breed: Utils.getDogInfo(1)['breed'],
            age: Utils.getDogInfo(1)['age'],
          ),
          AnimalSummaryCard(
            id: Utils.getDogInfo(2)['id'],
            imgUrl: Utils.getDogInfo(2)['imgUrl'],
            dogName: Utils.getDogInfo(2)['dogName'],
            breed: Utils.getDogInfo(2)['breed'],
            age: Utils.getDogInfo(2)['age'],
          ),
          AnimalSummaryCard(
            id: Utils.getDogInfo(3)['id'],
            imgUrl: Utils.getDogInfo(3)['imgUrl'],
            dogName: Utils.getDogInfo(3)['dogName'],
            breed: Utils.getDogInfo(3)['breed'],
            age: Utils.getDogInfo(3)['age'],
          ),
        ],
      ),
    );
  }
}
