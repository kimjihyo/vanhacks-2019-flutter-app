import 'package:flutter/material.dart';
import 'package:mobile/widgets/screens/AnimalDetailScreen.dart';

class AnimalSummaryCard extends StatelessWidget {
  final String dogName;
  final String imgUrl;
  final String breed;
  final int age;
  final int id;
  AnimalSummaryCard({
    @required this.id,
    @required this.dogName,
    @required this.imgUrl,
    @required this.breed,
    @required this.age,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimalDetailScreen(
              id: 1,
              age: 3,
              name: this.dogName,
              breed: this.breed,
              sex: 'Male',
              imgUrl: this.imgUrl,
              specialNotes:
                  'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,',
            ),
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
              title: Text(this.dogName),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Name: ${this.dogName}'),
                  Text('Age: ${this.age}'),
                  Text('Breed: ${this.breed}'),
                  Text('Walked: 10km'),
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
