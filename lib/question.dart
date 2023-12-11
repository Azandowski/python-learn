class QuizQuestion {
  String question;
  List<String> options;
  int correctOptionIndex;

  QuizQuestion(
      {required this.question,
      required this.options,
      required this.correctOptionIndex});

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      question: json['question'],
      options: List<String>.from(json['options']),
      correctOptionIndex: json['correctOptionIndex'],
    );
  }
}
