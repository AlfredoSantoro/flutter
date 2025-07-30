import 'package:exercise_2/adv_basic_quiz.dart';
import 'package:exercise_2/gradient_container.dart';
import 'package:exercise_2/questions_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeWidget = 'start-screen';

  void startQuiz() {
    setState(() {
      activeWidget = 'quiz-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromARGB(255, 78, 13, 151),
            Color.fromARGB(255, 107, 15, 168),
          ],
          childWidget: activeWidget == 'start-screen'
              ? AdvBasicQuiz(startQuiz: startQuiz)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
