import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  String correctAnswer;
  Question(this.questionText, this.options, this.correctAnswer);
  void displayQuestions() {
    print(questionText);
    for (String i in options) {
      print(i);
    }
  }

  bool isCorrect(String userAnswer) {
    return userAnswer.toLowerCase() == correctAnswer.toLowerCase();
  }
}

class MCQQuestion extends Question {
  MCQQuestion(String questionText, List<String> options, String correctAnswer)
      : super(questionText, options, correctAnswer);
}

void main() {
  List<Question> questions = [
    MCQQuestion(
        "what is your name?", ["pawan", "virat", "shami", "kuldeep"], "pawan"),
    MCQQuestion("what is pawan age?", ["14", "22", "56", "2"], "22"),
    MCQQuestion("what is pawan adress?", ["ind", "pak", "eng", "aus"], "ind"),
    MCQQuestion("what is pawan work?", ["dev", "cric", "foot", "ludo"], "dev"),
    MCQQuestion("how many pawan brothers? ", ["2", "1", "4", "3"], "2"),
  ];
  int correctAnswer = 0;
  int totalQuestions = questions.length;
  // String userAnswer;

  for (Question question in questions) {
    question.displayQuestions();
    stdout.write("enter your answer");
    String userAnswer = stdin.readLineSync()!;

    if (question.isCorrect(userAnswer)) {
      correctAnswer++;
    } else {
      print(
          "the answer is incorrect:- and the right answer is${question.correctAnswer}");
    }
  }
  double percentage = (correctAnswer / totalQuestions) * 100;
  print("your score is $correctAnswer out of $totalQuestions($percentage)");
  if (percentage >= 80) {
    print("excellent");
  } else if (percentage >= 60) {
    print("good");
  } else if (percentage >= 40) {
    print("better");
  } else {
    print("do again");
  }
}
