import 'package:flutter/material.dart';
import 'package:flutter_quiz/screens/home/widgets/start_quiz_button_widget.dart';
import 'package:flutter_quiz/screens/home/widgets/welcome_text_widget.dart';
import 'package:flutter_quiz/widgets/background_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundWidget(),
          SafeArea(
            child: Container(
              margin: const EdgeInsets.only(top: 15),
              child: Column(children: const [
                Center(
                  child: WelcomeTextWidget(),
                ),
                StartQuizButtonWidget()
              ]),
            ),
          )
        ],
      ),
    );
  }
}
