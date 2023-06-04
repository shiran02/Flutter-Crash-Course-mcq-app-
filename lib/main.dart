
import 'package:flitter_complete_guide/result.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';

void main(){
 runApp(MyApp());
}

class MyApp extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }

}


class _MyAppState extends State<MyApp>{

  var _questionIndex = 0;  
  var _totalScore = 0;

  void _resetQuiz(){

    setState(() {
       _questionIndex = 0;  
       _totalScore = 0;
    });

  }

      final _question = const [  
      {
        'questionText':'what\'s your favourite color ?',

        'answers':[
            {'text':'red' ,'score':12},
            {'text':'blue' ,'score':6} , 
            {'text':'Green' ,'score':16},
            {'text': 'white','score':13}
          ],

      },

      {
        'questionText':'what\'s your favourite Vehical ?',
          
          'answers':[
            {'text':'bmw' ,'score':12},
            {'text':'rangerover' ,'score':6} , 
            {'text':'benz' ,'score':16},
            {'text': 'toyota','score':13}
          ],
      },

      {
        'questionText':'what\'s your favourite Country ?',
          
          'answers':[
            {'text':'india' ,'score':12},
            {'text':'srilanka' ,'score':6} , 
            {'text':'newzeland' ,'score':16},
            {'text': 'australia','score':13}
          ],
      },

      {
        'questionText':'what\'s your favourite Flag ?',
          
          'answers':[
            {'text':'india' ,'score':12},
            {'text':'srilanka' ,'score':6} , 
            {'text':'newzeland' ,'score':16},
            {'text': 'australia','score':13}
          ],
      },

    ];
    void _answerQuestion(int score){

      _totalScore += score;

      setState(() { 
        _questionIndex += 1;
      });

      if(_questionIndex < _question.length){
        print("We have more Question");
      }else{
        print("We have  no more Question");
      } 
      
      print(_questionIndex);
    }

  @override
  Widget build(BuildContext context){


    return MaterialApp(home:Scaffold(
        appBar: AppBar(
          title: Text('My First App'), 
      ),
        
        body: _questionIndex < _question.length ? 
        Quiz(answerQuestion:_answerQuestion ,questionIndex: _questionIndex,question:_question)
        : Result(_totalScore , _resetQuiz)
    ),);
  }
}