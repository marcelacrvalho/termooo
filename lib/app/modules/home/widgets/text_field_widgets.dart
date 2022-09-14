import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:termooo/app/modules/home/controllers/home_controllers.dart';

class CustomTextField extends StatelessWidget {
  final Color color;

  const CustomTextField({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child:TextField(
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
