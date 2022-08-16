import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deafultEmailTextFormField extends StatelessWidget {
  const deafultEmailTextFormField({
    Key? key,
    required this.emailController,
  }) : super(key: key);

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Please Enter An Email Address';
        }
      },
      controller: emailController,
      // obscureText: true,
      decoration: InputDecoration(
        labelText: 'Email Adress',
        prefixIcon: Icon(Icons.email),
        border: OutlineInputBorder(),
      ),
    );
  }
}
