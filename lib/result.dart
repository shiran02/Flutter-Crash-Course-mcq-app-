import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  final  Function()? resetHandler; // Good

  Result(this.resultScore , this.resetHandler);

  String get resultPhrase{
    var resultText = "you dud it";

    if(resultScore <= 8){
         resultText = 'you are awesome and innocent';
    }else{
        resultText = 'you are innocent';
    }
    return resultText;
  }
  

  @override
  Widget build(BuildContext context) {
    return Center(
           child: Column(
             children: [



               Text(
                resultPhrase,
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),

                TextButton(
                  child: Text('Restart Quiz'), 
                  onPressed:resetHandler ,
                ),
             ],
           ),
          );
  }
}

