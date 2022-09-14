import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  late Color color;

  CustomTextField(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 100,
      child: GestureDetector(
        onDoubleTap: (){
          print('AO CLICAR DUAS VEZES ESSA LETRA SE APAGARÁ');
        },
        child: TextField(
          textAlign: TextAlign.center,
          maxLines: 1,
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
      ),
    );
  }
}
