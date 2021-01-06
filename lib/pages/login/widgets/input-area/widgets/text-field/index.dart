import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const AppTextField({
    Key key,
    this.hintText,
    this.obscureText: false,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: hintText,
        labelStyle: TextStyle(
          fontSize: 12,
        ),
      ),
    );
  }
}
