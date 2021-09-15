import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'custom_button.dart';
import 'main.dart';

class QuizApp extends StatefulWidget {
  //const QuizApp({Key? key}) : super(key: key);

  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {

  List<Icon> scoreKeeper = [];

  void checkAnswer (bool userPickedAnswer){
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true){
        Alert(
          context: context,
          title: 'Finished',
          desc: 'You\'ve come to the end of the quiz',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
      }
      else{
        if (userPickedAnswer == correctAnswer){
          scoreKeeper.add(Icon(Icons.check,color: Colors.green,));
        }
        else{
          scoreKeeper.add(Icon(Icons.close,color: Colors.red,));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(quizBrain.getQuestionText(),
                textAlign:TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
            ),
          ),
        ),
        Expanded(
            child: InkWell(
              onTap: (){
                checkAnswer(true);
              },
              child: CustomButton(
                color: Colors.green,
                text: 'True',
              ),
            )
        ),
        SizedBox(height: 10.0,),
        Expanded(
            child: InkWell(
              onTap: (){
                checkAnswer(false);
              },
              child: CustomButton(
                color: Colors.red,
                text: 'False',
              ),
            )
        ),

        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}
