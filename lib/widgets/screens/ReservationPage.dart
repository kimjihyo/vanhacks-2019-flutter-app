import 'package:flutter/material.dart';
import 'package:mobile/widgets/CameraScreen.dart';
import 'package:mobile/widgets/screens/NFCReader.dart';

class ReservationPage extends StatelessWidget {
  final int id;
  final String dogName;
  final String imgUrl;
  final String breed;
  final int age;
  final String sex;
  ReservationPage({
    @required this.id,
    @required this.dogName,
    @required this.breed,
    @required this.age,
    @required this.sex,
    this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservaton completed'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.network(
              this.imgUrl,
              fit: BoxFit.fill,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Text(
                          "${this.dogName} is waiting for you at the shelter"),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Name: " + this.dogName),
                        Text("Breed: " + this.breed),
                        Text("Age: " + this.age.toString()),
                        Text("Sex:" + this.sex),
                      ],
                    ),
                  )
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 2,
            margin: EdgeInsets.all(10),
          ),
          NFCReader(this.id),
          // RaisedButton(
          //   child: Text('Scan QR Code'),
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => CameraApp()));
          //   },
          // )
        ],
      ),
    );
  }
}
