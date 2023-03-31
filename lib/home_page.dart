

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class HomePage extends StatefulWidget {
  

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  var question = [
    {"question": "your prefered color?",
    "responses" :["rep1" , "rep2" , "rep3" , "rep4"]
    },
    {"question": "Best car?",
    "responses" :["rep1" , "rep2" , "rep3" ]
    },
    {"question": "favourite pets?",
    "responses" :["rep1" , "rep2" , "rep3" ]
    },

  ];
  var questionIndex = 0 ;

  void answer() {
    setState ((){
    questionIndex++ ; 
    });
    print(questionIndex);
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text(' QUIZii'),
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.cloud),
             )
        ],
      ),
      body : question.length <= questionIndex
        ? Text("VERY NICE WORK")
        : Center(
          child : Column(
            children: [
              SizedBox(height: 40),


              Question(question[questionIndex]['question'].toString()),
              SizedBox(height: 20),
              Answer(answer),
              SizedBox(height:20),
              Answer(answer),
              SizedBox(height: 20),
              Answer(answer),

            ],
          ),
        ),
        drawer : Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add_comment),
          ),

    );
  }


}
