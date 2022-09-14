import 'dart:math';

class Word {
  final List<String> _words = ['sagaz', 'voraz', 'negro', 'papel', 'termo', 'terno'];

  String getRandomWord() {
    int random = Random().nextInt(_words.length);
    return _words[random];
  }
}