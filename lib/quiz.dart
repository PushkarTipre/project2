import 'package:flutter/material.dart';
import 'package:project2/questions_screen.dart';
import 'data/questions.dart';
import 'main_screen.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        //selectedAnswers = [];
        activeScreenId = 'result-screen';
      });
    }
  }

  var activeScreenId = 'main-screen'; //Assigned a value to check afterwards
  //Widget? activeScreen;

  void changeScreen() {
    setState(() {
      //activeScreen = QuestionsScreen();
      activeScreenId = 'question-screen';
    });
  }

  /* @override
  void initState() {
    activeScreen = MainScreen(changeScreen);
    super.initState();
  }*/
  @override
  Widget build(BuildContext context) {
    var screenWidget = activeScreenId ==
            'main-screen' //(Condition) Checking here if first screen is main screen
        ? MainScreen(changeScreen) //First screen is main screen
        : QuestionsScreen(
            onSelectAnswer: chooseAnswer,
          ); //Question Screen displayed if main screen not displayed

    void restartQuiz() {
      setState(() {
        selectedAnswers = [];
        activeScreenId = 'questions_screen';
      });
    }

    if (activeScreenId == 'result-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168)
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
