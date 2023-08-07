import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Correct'),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'List of Q and A',
            ),
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {},
              child: Text('Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
