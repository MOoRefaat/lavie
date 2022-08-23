import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifactionsScreen extends StatelessWidget {
  const NotifactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
          child: Text(
        'Notifation',
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
