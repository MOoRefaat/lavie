import 'package:flutter/material.dart';

import '../components.dart';
import '../../screens/HomeLayout_Screen/view/homeLayout_screen.dart';

class DefaultBTN extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  final VoidCallback onPressed;
  const DefaultBTN({
    Key? key,
    // required this.formKey,
    required this.text,
    required this.padding,
    required this.onPressed,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 58,
      onPressed: onPressed
      // if (formKey.currentState!.validate()) {
      //   navigateTo(context, HomeLayoutScreen());
      // } else {
      //   return null;
      // }
      ,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      //  color: MyColors.myPurple,
      color: Colors.green,
      padding: padding,
      // EdgeInsets.symmetric(horizontal: 122, vertical: 16)
      clipBehavior: Clip.antiAliasWithSaveLayer,
    );
  }
}
