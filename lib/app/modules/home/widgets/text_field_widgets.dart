import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final Color color;

  const CustomTextField({Key? key, required this.controller, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: TextField(
        controller: controller,
        textAlign: TextAlign.center,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        maxLength: 1,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          filled: true,
          fillColor: color,
        ),
      ),
    );
  }
}
