import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
 
  void switchScreen(){
    setState(() {
        activeScreen = QuestionsScreen();
      }
    );
  }
 
  @override
  Widget build(BuildContext context) {
    return Center (child: activeScreen,);
  }
}