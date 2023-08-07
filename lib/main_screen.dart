import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.changeScreen, {super.key});

  final void Function() changeScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 22.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: changeScreen,
            icon: Icon(Icons.arrow_right_alt),
            label: Text(
              'Start Quiz',
            ),
          ),
        ],
      ),
    );
  }
}
