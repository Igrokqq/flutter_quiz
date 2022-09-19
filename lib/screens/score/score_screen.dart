import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/quiz/quiz_provider.dart';
import 'package:flutter_quiz/widgets/background_widget.dart';
import 'package:provider/provider.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<QuizProvider>(builder: ((context, quizProvider, child) {
      return Scaffold(
        body: Stack(
          children: [
            const BackgroundWidget(),
            SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Center(
                    child: Column(children: [
                      Text('Score: ${quizProvider.score}'),
                      ElevatedButton(
                        onPressed: () {
                          quizProvider.resetQuiz();
                          Navigator.pushNamed(context, '/');
                        },
                        child: const Text("Restart"),
                      )
                    ]),
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
