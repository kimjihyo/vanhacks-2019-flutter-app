import 'package:flutter/material.dart';
import 'package:mobile/widgets/screens/ReservationPage.dart';
import 'package:url_launcher/url_launcher.dart';

class AnimalDetailScreen extends StatelessWidget {
  AnimalDetailScreen({
    @required this.id,
    @required this.name,
    @required this.breed,
    @required this.age,
    @required this.sex,
    @required this.imgUrl,
    @required this.specialNotes,
    this.temperment,
  });

  final int id;
  final String name;
  final String breed;
  final String sex;
  final String imgUrl;
  final String temperment;
  final String specialNotes;
  final int age;

  void launchDialer() async {
    const url = "tel:1234567";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void launchReservationScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ReservationPage(
          id: 1,
          age: 3,
          dogName: this.name,
          breed: this.breed,
          sex: 'Male',
          imgUrl: this.imgUrl,
        ),
      ),
    );
  }

  void onPhoneButtonPrssed(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (builderContext) => AlertDialog(
        title: Text('Are you sure you want to walk with this dog?'),
        actions: <Widget>[
          FlatButton(
            child: Text('Yes'),
            onPressed: () {
              Navigator.pop(context);
              launchReservationScreen(context);
            },
          ),
          FlatButton(
            child: Text('No'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(this.name),
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
          // Card(
          //   child: Padding(
          //     padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          //     child: Column(
          //       children: <Widget>[
          //         ListTile(
          //           title: Padding(
          //             padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
          //             child: Text("Information of his owner"),
          //           ),
          //           subtitle: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: <Widget>[
          //               Text("Name: " + 'Jihyo Kim'),
          //               Text("Phone Number: " + '778-223-9120'),
          //               Text('Address: ' + '1703-777 Cardero St, Vancouver BC')
          //             ],
          //           ),
          //         )
          //       ],
          //     ),
          //   ),
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(10.0),
          //   ),
          //   elevation: 2,
          //   margin: EdgeInsets.all(10),
          // ),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                      child: Text("Information of this dog"),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Name: " + this.name),
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
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text("Speical Notes"),
                    subtitle: Text(this.specialNotes),
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
          Card(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text("Map Card"),
                  subtitle: Text("hello world"),
                )
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 2,
            margin: EdgeInsets.all(10),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onPhoneButtonPrssed(context);
        },
        tooltip: 'Walk',
        child: Icon(Icons.directions_walk),
      ),
    );
  }
}
