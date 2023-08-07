class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getshuffeldAnswers() {
    final shuffeldAnswers = List.of(answers);
    shuffeldAnswers.shuffle();
    return shuffeldAnswers;
  }
}
