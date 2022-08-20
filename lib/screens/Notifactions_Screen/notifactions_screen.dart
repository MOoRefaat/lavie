import 'package:flutter/cupertino.dart';

class NotifactionsScreen extends StatelessWidget {
  const NotifactionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Notifation',
      style: TextStyle(
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
