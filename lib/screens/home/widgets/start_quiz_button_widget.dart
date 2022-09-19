import 'package:flutter/material.dart';

class StartQuizButtonWidget extends StatelessWidget {
  const StartQuizButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushNamed(context, '/quiz');
      },
      child: const Text('Start'),
    );
  }
}
