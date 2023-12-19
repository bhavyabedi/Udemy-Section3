import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({super.key, required this.summarydata});

  final List<Map<String, Object>> summarydata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summarydata.map((data) {
        return Row(
          children: [
            Text(((data['question_index'] as int) + 1).toString()),
            Expanded(
              child: Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(data['user_answer'] as String),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Correct Answer:' + (data['correct_answer'] as String)),
                ],
              ),
            ),
          ],
        );
      }).toList(),
    );
  }
}