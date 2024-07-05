import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.labelText,
      this.onchange,
      this.obsecure = false});

  Function(String)? onchange;
  final String? labelText;
  final String? hintText;
  final bool? obsecure;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecure!,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required Field';
        }
      },
      onChanged: onchange,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.white),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
