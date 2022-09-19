import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/home/home_screen.dart';
import 'package:flutter_quiz/screens/quiz/quiz_provider.dart';
import 'package:flutter_quiz/screens/quiz/quiz_screen.dart';
import 'package:flutter_quiz/screens/score/score_screen.dart';
import 'package:provider/provider.dart';

class QuizzarioApp extends StatelessWidget {
  const QuizzarioApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuizProvider()),
      ],
      child: MaterialApp(
        title: 'Quizzario',
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/quiz': (context) => const QuizScreen(),
          '/score': (context) => const ScoreScreen(),
        },
      ),
    );
  }
}
