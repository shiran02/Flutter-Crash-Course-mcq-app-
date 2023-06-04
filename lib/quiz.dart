import 'answer.dart';
import 'package:flutter/material.dart';

import 'question.dart';

class  Quiz extends StatelessWidget {
  
  final List<Map<String,Object>> question;
  final  Function answerQuestion; // Good
  final int questionIndex;

const Quiz({
  required this.question , 
  required this.answerQuestion , 
  required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              
              Question(
                (question[questionIndex]['questionText'] as String),
              ),

              //Answer(_answerQuestion),
             // Answer(_answerQuestion),
            //  Answer(_answerQuestion),

            ...(question[questionIndex]['answers'] as List<Map<String,Object>>)
            .map((answer){
                return Answer(()=>answerQuestion(answer['score']) , answer['text'].toString());
            }).toList()
 
              /*..........................................................................................................

              ElevatedBu tton(

                // named function .............................................
                onPressed: _answerQuestion,  
                child: Text('Answer 1'),
              ), 

              ElevatedButton(
               // onPressed: ()=> print('Answer 2 Choosen'), 
                onPressed: _answerQuestion, 
                child: Text('Answer 2'),
              ),

              ElevatedButton(

                //using anonymous function ......................................
                // onPressed: (){  
                //   print('Answer 3 Choosen');
                // }, 

                onPressed: _answerQuestion, 
                child: Text('Answer 3'),
              ),

               . ......................................................................................................  */
            ],
        );
  }
}