import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/quiz/quiz_provider.dart';
import 'package:flutter_quiz/screens/quiz/widgets/option_widget.dart';
import 'package:flutter_quiz/screens/quiz/widgets/prev_button_widget.dart';
import 'package:flutter_quiz/screens/quiz/widgets/question_widget.dart';
import 'package:flutter_quiz/screens/quiz/widgets/show_results_button_widget.dart';
import 'package:flutter_quiz/widgets/background_widget.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(builder: ((context, quizProvider, child) {
      Question currentQuestion = quizProvider.currentQuestion;

      return Scaffold(
        body: Stack(
          children: [
            const BackgroundWidget(),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  QuestionWidget(title: currentQuestion.title),
                  ...currentQuestion.options.map((e) => OptionWidget(
                      title: e.title, onChoose: quizProvider.onOptionChoose)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // QuestionsSwitcherWidget()
                      const Spacer(),
                      PrevButtonWidget(onPressed: quizProvider.goPrevQuestion),
                      const Spacer(),
                      if (quizProvider.isLastQuestion)
                        const ShowResultsButtonWidget(),
                      const Spacer(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );
    }));
  }
}
