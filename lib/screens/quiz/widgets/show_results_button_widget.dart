import 'package:flutter/material.dart';

class ShowResultsButtonWidget extends StatelessWidget {
  const ShowResultsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),
      onPressed: () {
        Navigator.pushNamed(context, '/score');
      },
      child: const Text('Finish'),
    );
  }
}
