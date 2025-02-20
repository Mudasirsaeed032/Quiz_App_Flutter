import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import './start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // Widget screenWidget = StartScreen(switchScreen);

    // if (activeScreen == 'questions-screen') {
    //   screenWidget = const QuestionsScreen();
    // }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 59, 9, 144),
                const Color.fromARGB(255, 103, 41, 209),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
            ),
          ),
          child:
              activeScreen == 'start-screen'
                  ? StartScreen(switchScreen)
                  : const QuestionsScreen(),
        ),
      ),
    );
  }
}
