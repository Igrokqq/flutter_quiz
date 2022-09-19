import 'package:flutter/material.dart';

typedef Questions = List<Question>;
typedef Options = List<Option>;

class Option {
  String title = '';

  Option({required this.title});
}

class Question {
  String title = '';
  Options options = [];
  Option? selectedOption;
  Option correctOption;

  Question({
    required this.title,
    required this.options,
    required this.correctOption,
  });

  bool get isAnswerCorrect {
    return correctOption.title == selectedOption?.title;
  }
}

Options defaultOptions = [
  Option(title: 'option1'),
  Option(title: 'option2'),
  Option(title: 'option3'),
];

class QuizProvider with ChangeNotifier {
  Questions _questions = [
    Question(
        title: 'Question1',
        options: defaultOptions,
        correctOption: defaultOptions.elementAt(0)),
    Question(
        title: 'Question2',
        options: defaultOptions,
        correctOption: defaultOptions.elementAt(0)),
    Question(
        title: 'Question3',
        options: defaultOptions,
        correctOption: defaultOptions.elementAt(0)),
  ];

  int _currentIndex = 0;

  void setQuestions(Questions questions) {
    _questions = questions;
    notifyListeners();
  }

  void goNextQuestion() {
    if (_questions.asMap()[_currentIndex + 1] == null) {
      return;
    }

    _currentIndex++;
    notifyListeners();
  }

  void goPrevQuestion() {
    if (_questions.asMap()[_currentIndex - 1] == null) {
      return;
    }

    _currentIndex--;
    notifyListeners();
  }

  bool get isLastQuestion {
    return _currentIndex == _questions.length - 1;
  }

  Question get currentQuestion {
    return _questions.elementAt(_currentIndex);
  }

  int get score {
    return _questions.fold(0, (int score, Question question) {
      if (question.isAnswerCorrect) {
        return score + 1;
      }

      return score;
    });
  }

  void resetQuiz() {
    _currentIndex = 0;
    // reset answers
    _questions = _questions.map((Question question) {
      question.selectedOption = null;
      return question;
    }).toList();
  }

  void onOptionChoose(Option option) {
    Question question = _questions.elementAt(_currentIndex);
    question.selectedOption = option;
    goNextQuestion();
  }
}
