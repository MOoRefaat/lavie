import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget deafultTextFormField({
  required TextEditingController? controller,
  final Function? validate,
  TextInputType? type,
  required String label,
  required Icon? prefix,
  Widget? suffix,
  bool isPassword = false,
  final GestureTapCallback? onTap,
}) =>
    TextFormField(
      onTap: onTap,
      keyboardType: type,
      controller: controller,
      obscureText: isPassword,
      validator: (value) {
        return validate!(value);
      },
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: prefix,
        suffixIcon: suffix,
        border: OutlineInputBorder(),
      ),
    );
