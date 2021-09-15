
import 'package:quizapp/question_bank.dart';

class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('Is kunle more then 50 years?',  true),
    Question('Can Kelvin solve a cloud formation problem and also deploy it?',true),
    Question('Do you think kunle\'s design is the best in this world?',false),
    Question( 'Is JavaScript thesame as Java?', false),
    Question('Is Dart created by Google?', true),
    Question('Is Dart an Object Oriented Programming Language?', true),
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
  ];


  void nextQuestion(){
    if (_questionNumber < _questionBank.length -1){
      _questionNumber++;
    }
  }
  String getQuestionText(){
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

 bool isFinished(){
    if (_questionNumber >= _questionBank.length -1){
      print ('this is the end');
      return true;
    }else {
      return false;
    }
  }
  void reset(){
    _questionNumber = 0;
  }

}
