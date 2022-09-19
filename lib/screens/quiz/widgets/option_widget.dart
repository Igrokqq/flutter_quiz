import 'package:flutter/material.dart';

import '../quiz_provider.dart';

class OptionWidget extends StatelessWidget {
  final String title;
  final Function(Option option) onChoose;

  const OptionWidget({
    super.key,
    required this.title,
    required this.onChoose,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => onChoose(Option(title: title)),
      child: Text(title),
    );
  }
}
