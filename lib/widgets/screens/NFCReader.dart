import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_nfc_reader/flutter_nfc_reader.dart';
import 'package:mobile/constants.dart';
import 'package:mobile/widgets/screens/WalkingStartedScreen.dart';

import 'AnimalDetailScreen.dart';

class NFCReader extends StatefulWidget {
  final int dogId;
  NFCReader(this.dogId);
  @override
  _NFCReaderState createState() => _NFCReaderState();
}

class _NFCReaderState extends State<NFCReader> {
  NfcData _nfcData;

  void initState() {
    super.initState();
    // startNFC();
  }

  Future<void> startNFC(BuildContext context) async {
    NfcData response;
    setState(() {
      _nfcData = NfcData();
      _nfcData.status = NFCStatus.reading;
    });

    print('NFC: Scan started');

    try {
      print('NFC: Scan readed NFC tag');
      response = await FlutterNfcReader.read();
      print(response);
      openDetailView(context);
    } catch (e) {
      print('NFC: Scan stopped exception');
    }
    setState(() {
      _nfcData = response;
    });
  }

  void openDetailView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WalkingStartedScreen([widget.dogId]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text('Tap on the dog to start walking with him'),
        onPressed: () async {
          await startNFC(context);
        },
      ),
    );
  }
}
