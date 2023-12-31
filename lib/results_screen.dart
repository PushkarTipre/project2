import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project2/data/questions.dart';
import 'question_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'You have answered $numCorrectQuestions out of $numTotalQuestions questions',
                style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 230, 200, 253),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30.0,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30.0,
              ),
              TextButton.icon(
                onPressed: onRestart,
                style: TextButton.styleFrom(foregroundColor: Colors.white),
                icon: const Icon(Icons.refresh),
                label: const Text('Restart Quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
