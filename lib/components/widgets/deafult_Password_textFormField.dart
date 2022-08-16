import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deafultPasswordTextFormField extends StatelessWidget {
  const deafultPasswordTextFormField({
    Key? key,
    required this.passwordController,
  }) : super(key: key);

  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // keyboardType: TextInputType.emailAddress,
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Please Enter Password';
        }
      },
      controller: passwordController,
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        suffixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.visibility_off_outlined),
        ),
        prefixIcon: Icon(Icons.lock),
        //  suffixIcon: Icon(Icons.remove_red_eye),
        border: OutlineInputBorder(),
      ),
    );
  }
}
