import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'dart:io';

class QrScannerScreen extends StatefulWidget {
  //const QrScannerScreen({Key? key}) : super(key: key);
  @override
  State<QrScannerScreen> createState() => _QrScannerScreenState();
}

class _QrScannerScreenState extends State<QrScannerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Center(
              child: Text(
            'Qr Scan',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          )),
        ));
  }
}
