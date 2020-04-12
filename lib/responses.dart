import 'package:flutter/material.dart';

class Responses {
  List<Icon> _responses = [];
  int _correctAnswers = 0;

  void answerIs(bool answer) {
    if (answer) {
      _responses.add(Icon(Icons.check, color: Colors.green));
      _correctAnswers++;
    }
    else {
      _responses.add(Icon(Icons.close, color: Colors.red));
    }
  }

  List<Icon> answers() {
    return _responses;
  }

  int numberOfCorrectAnswers({bool clear}) {
    var correctAnswers = _correctAnswers;
    if (clear) {
      _responses.clear();
      _correctAnswers = 0;
    }
    return correctAnswers;
  }
  
}