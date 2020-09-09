import 'package:flutter/material.dart';
import 'package:quiz_gampang_app/question.dart';

class QuestionLogic {
  int _questionnumber = 0;
  List<Question> _questionlist = [
    Question('what application is this?', true),
    Question('eat with your right hand?', true),
    Question('fish live in water?', true),
    Question('do chickens fly?', false),
    Question('bananas are not edible?', false),
    Question('train on the water?', false),
    Question('oppetek?', true),
    Question('whether the plane is in the water?', false),
    Question('do sharks have legs?', false),
    Question('is there kaiju here?', false),
  ];

  String getQuestion() => _questionlist[_questionnumber].question;

  int getQuestionNumberText() => _questionnumber + 1;

  int getTotalQuestionText() => _questionlist.length;

  bool getCorrectAnswer() => _questionlist[_questionnumber].answer;

  void nextquestion() {
    if (_questionnumber < _questionlist.length - 1) {
      _questionnumber++;
      print(_questionnumber);
    }
  }

  bool isFinish() {
    if (_questionnumber >= _questionlist.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionnumber = 0;
}
