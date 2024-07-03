import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.txt, this.ontap});

  VoidCallback? ontap;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: Text(
            txt,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
