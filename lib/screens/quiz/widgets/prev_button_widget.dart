import 'package:flutter/material.dart';

class PrevButtonWidget extends StatelessWidget {
  final Function() onPressed;

  const PrevButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text('Prev'),
    );
  }
}
