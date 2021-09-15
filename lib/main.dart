import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/quiz_brain.dart';
import 'package:quizapp/source_page.dart';


QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(Quizzer());
}

class Quizzer extends StatelessWidget {
 // const Quizzer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: QuizApp(),
          ),
        ),
      ),
    );
  }
}




