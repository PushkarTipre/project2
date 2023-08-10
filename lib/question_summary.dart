import 'package:flutter/material.dart';
import 'package:project2/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return SummaryItem(data);
            },
          ).toList(),
        ),
      ),
    );
  }
}
/*
*  Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: TextStyle(),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.adventPro(
                              color: Colors.white, fontSize: 30.0),
                          //style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 5.0),
                        Text(data['user_answer'] as String,
                            style: GoogleFonts.adventPro(
                                color: Color.fromARGB(230, 255, 66, 255),
                                fontSize: 26.0)),
                        Text(
                          data['correct_answer'] as String,
                          style: GoogleFonts.adventPro(
                              color: Color.fromARGB(255, 100, 216, 255),
                              fontSize: 26.0),
                        ),
                      ],
                    ),
                  )
                ],
              );*/
