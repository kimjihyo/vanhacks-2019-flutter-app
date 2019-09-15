import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/widgets/screens/SpcaSummaryCard.dart';

class SpcaListScreen extends StatelessWidget {
  void onCardTapped(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteer Animal Walk'),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Primary branch', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Column(
                children: <Widget>[
                  SpcaSummaryCard(
                    branchId: 1,
                    imgUrl: kSampleSpcaImage,
                    branchName: 'Burnaby Branch',
                    numOfAnimals: 15,
                  ),
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Other branches', style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Column(
                children: <Widget>[
                  SpcaSummaryCard(
                    branchId: 1,
                    imgUrl: kSampleSpcaImage,
                    branchName: 'Vancouver Branch',
                    numOfAnimals: 15,
                  ),
                  SpcaSummaryCard(
                    branchId: 1,
                    imgUrl: kSampleSpcaImage,
                    branchName: 'Richmond Branch',
                    numOfAnimals: 15,
                  ),
                  SpcaSummaryCard(
                    branchId: 1,
                    imgUrl: kSampleSpcaImage,
                    branchName: 'Surrey Branch',
                    numOfAnimals: 15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
