import 'package:flutter/cupertino.dart';

class QuestionWidget extends StatelessWidget {
  final String title;

  const QuestionWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
