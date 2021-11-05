import 'dart:io';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State {
  int questionIndex = 0;
  int totalScore = 0;
  var questions = [
    {
      'question': 'Name Harry Potter\s parents?',
      'answers': [
        {'text': 'James and milly potter', 'score': 0},
        {'text': 'Ron and luna potter', 'score': 0},
        {'text': 'James and lily potter', 'score': 1}
      ]
    },
    {
      'question':
          'How would you spell the spell you would use to disarm someone?',
      'answers': [
        {'text': 'Expelliarmus', 'score': 1},
        {'text': 'Expellaraiums', 'score': 0},
        {'text': 'Expelloriums', 'score': 0}
      ]
    },
    {
      'question': 'What was Harry’s Patronus?',
      'answers': [
        {'text': 'A bull', 'score': 0},
        {'text': 'An owl', 'score': 0},
        {'text': 'A stag', 'score': 1}
      ]
    },
    {
      'question':
          'Who does Hermione Granger become when she takes a Polyjuice Potion to break into Gringotts Bank?',
      'answers': [
        {'text': 'Molly Weasley', 'score': 0},
        {'text': 'Herself', 'score': 0},
        {'text': 'Bellatrix Lestrange', 'score': 1}
      ]
    },
    {
      'question': 'What position did Harry Potter play at Quidditch?',
      'answers': [
        {'text': 'Seeker', 'score': 1},
        {'text': 'Defender', 'score': 0},
        {'text': 'Thrower', 'score': 0}
      ]
    },
    {
      'question': 'What relation was Sirius Black to Harry?',
      'answers': [
        {'text': ' Uncle', 'score': 0},
        {'text': 'Godfather', 'score': 1},
        {'text': 'Teacher', 'score': 0}
      ]
    },
    //
  ];

  void resetScore() {
    setState(() {
      totalScore = 0;
      questionIndex = 0;
    });
  }

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
    print(totalScore);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Harry potter Quiz App'),
        ),
        body: questionIndex < questions.length
            ? Quiz(questions, answerQuestion, questionIndex)
            : Result(totalScore, resetScore),
      ),
    );
  }
}
