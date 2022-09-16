import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:termooo/app/modules/home/models/word.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.put(HomeController());
  late String randomWord;

  List<TextEditingController> contrl = [];

  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var controller3 = TextEditingController();
  var controller4 = TextEditingController();
  var controller5 = TextEditingController();

  RxBool isGreen0 = false.obs;
  RxBool isGreen1 = false.obs;
  RxBool isGreen2 = false.obs;
  RxBool isGreen3 = false.obs;
  RxBool isGreen4 = false.obs;

  RxList<Color> fillColor = [
    Colors.black26,
    Colors.black26,
    Colors.black26,
    Colors.black26,
    Colors.black26
  ].obs;

  late List<String> randomWordList;

  @override
  void onInit() {
    Word word = Word();
    randomWord = word.getRandomWord();
    randomWordList =
        List<String>.generate(randomWord.length, (index) => randomWord[index]);

    print(randomWord);
    super.onInit();
  }

  void checkWord() {
    _checkIfItsCorrect();
  }

  void _checkIfItsCorrect() {
    String userInput = controller1.text +
        controller2.text +
        controller3.text +
        controller4.text +
        controller5.text;

    var userInputList =
        List<String>.generate(userInput.length, (index) => userInput[index]);

    if (userInput == randomWord) {
      fillColor[0] = Colors.green;
      fillColor[1] = Colors.green;
      fillColor[2] = Colors.green;
      fillColor[3] = Colors.green;
      fillColor[4] = Colors.green;

    } else if (userInputList[0] == randomWordList[0]) {
      fillColor[0] = Colors.green;
      isGreen0.value = true;
    }
    if (userInputList[1] == randomWordList[1]) {
      fillColor[1] = Colors.green;
      isGreen1.value = true;
    }
    if (userInputList[2] == randomWordList[2]) {
      fillColor[2] = Colors.green;
      isGreen2.value = true;
    }
    if (userInputList[3] == randomWordList[3]) {
      fillColor[3] = Colors.green;
      isGreen3.value = true;
    }
  }

  void _checkIfItsExist() {

  }
}
