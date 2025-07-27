import 'package:exercise_2/styled_text.dart';
import 'package:flutter/material.dart';

class AdvBasicQuiz extends StatelessWidget {
  const AdvBasicQuiz({super.key, required this.startQuiz});

  static const String text = 'Learn flutter the fun way!';
  static const String textButton = 'Start Quiz';
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asset/images/quiz-logo.png',
          color: Color.fromRGBO(255, 255, 255, 150),
          width: 200,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60.0),
          child: StyledText(
            text: text,
            color: Colors.white,
            fontSize: 25.5,
            fontWeight: FontWeight.normal,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: Icon(Icons.arrow_right_alt),
            label: Text('Start Quiz'),
          ),
        ),
      ],
    );
  }
}
