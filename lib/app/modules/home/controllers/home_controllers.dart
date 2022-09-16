import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termooo/app/modules/home/models/word.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());

  late String randomWord;

  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var controller3 = TextEditingController();
  var controller4 = TextEditingController();
  var controller5 = TextEditingController();

  late RxBool checked = false.obs;

  Color colorRight = const Color(0XFF3aa394);
  Color colorWrongPosition = const Color(0XFFd3ad69);
  RxList<Color> fillColor = [
    Colors.black26,
    Colors.black26,
    Colors.black26,
    Colors.black26,
    Colors.black26
  ].obs;

  late List<String> randomWordList;
  late String userInput;
  late List<String> userInputList;

  @override
  void onInit() {
    Word word = Word();
    randomWord = word.getRandomWord();
    randomWordList =
        List<String>.generate(randomWord.length, (index) => randomWord[index]);
    super.onInit();
  }

  void checkWord() {
    userInput = controller1.text +
        controller2.text +
        controller3.text +
        controller4.text +
        controller5.text;
    userInputList =
    List<String>.generate(userInput.length, (index) => userInput[index]);
    _checkIfItsCorrect();
    if(!checked.value) {
      _checkIfItsExist();
    }
  }

  void _checkIfItsCorrect() {
    if (userInput == randomWord) {
      for(int i = 0; i < randomWordList.length; i++) {
        fillColor[i] = colorRight;
      }
      checked.value = true;
    } else if (userInputList[0] == randomWordList[0]) {
    }
    for(int i = 0; i < userInputList.length; i++) {
      if (userInputList[i] == randomWordList[i]) {
        fillColor[i] = colorRight;
      }
    }
  }

  void _checkIfItsExist() {
    for(int i = 0; i < userInputList.length; i++) {
      if(randomWordList.contains(userInputList[i]) && fillColor[i] != colorRight) {
        fillColor[i] = colorWrongPosition;
      }
    }
  }
}