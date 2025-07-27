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
  Widget? activeWidget;

  @override
  void initState() {
    super.initState();
    activeWidget = AdvBasicQuiz(startQuiz: startQuiz);
  }

  void startQuiz() {
    setState(() {
      activeWidget = const QuestionsScreen();
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
          childWidget: activeWidget,
        ),
      ),
    );
  }
}
