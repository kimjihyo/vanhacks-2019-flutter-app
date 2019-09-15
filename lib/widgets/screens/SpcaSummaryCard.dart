import 'package:flutter/material.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/widgets/screens/AnimalDetailScreen.dart';
import 'package:mobile/widgets/screens/AnimalListScreen.dart';

class SpcaSummaryCard extends StatelessWidget {
  final String branchName;
  final int branchId;
  final int numOfAnimals;
  final String imgUrl;

  SpcaSummaryCard({
    @required this.branchName,
    @required this.branchId,
    @required this.numOfAnimals,
    @required this.imgUrl,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalListScreen(this.branchName),
          ),
        );
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Image.network(
              this.imgUrl,
              fit: BoxFit.fill,
            ),
            ListTile(
              title: Text(this.branchName),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Animals need waling: ${this.numOfAnimals}'),
                ],
              ),
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}
