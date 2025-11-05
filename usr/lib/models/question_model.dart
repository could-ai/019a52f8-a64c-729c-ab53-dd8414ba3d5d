class Answer {
  final String text;
  final int score;

  Answer(this.text, this.score);
}

class Question {
  final String text;
  final List<Answer> answers;

  Question(this.text, this.answers);
}

final List<Question> questions = [
  Question(
    "Over the last 2 weeks, how often have you been bothered by feeling down, depressed, or hopeless?",
    [
      Answer("Not at all", 0),
      Answer("Several days", 1),
      Answer("More than half the days", 2),
      Answer("Nearly every day", 3),
    ],
  ),
  Question(
    "Over the last 2 weeks, how often have you been bothered by little interest or pleasure in doing things?",
    [
      Answer("Not at all", 0),
      Answer("Several days", 1),
      Answer("More than half the days", 2),
      Answer("Nearly every day", 3),
    ],
  ),
  Question(
    "Over the last 2 weeks, how often have you been bothered by trouble falling or staying asleep, or sleeping too much?",
    [
      Answer("Not at all", 0),
      Answer("Several days", 1),
      Answer("More than half the days", 2),
      Answer("Nearly every day", 3),
    ],
  ),
  Question(
    "Over the last 2 weeks, how often have you been bothered by feeling tired or having little energy?",
    [
      Answer("Not at all", 0),
      Answer("Several days", 1),
      Answer("More than half the days", 2),
      Answer("Nearly every day", 3),
    ],
  ),
  Question(
    "Over the last 2 weeks, how often have you been bothered by poor appetite or overeating?",
    [
      Answer("Not at all", 0),
      Answer("Several days", 1),
      Answer("More than half the days", 2),
      Answer("Nearly every day", 3),
    ],
  ),
];
