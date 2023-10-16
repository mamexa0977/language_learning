class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  // ADD questions and answers here


  // Add the new questions here
  list.add(Question(
    "What is the meaning of 'eloquent'?",
    [
      Answer("Articulate", true),
      Answer("Silent", false),
      Answer("Shy", false),
      Answer("Rude", false),
    ],
  ));

  list.add(Question(
    "What is a synonym for 'benevolent'?",
    [
      Answer("Cruel", false),
      Answer("Kind", true),
      Answer("Hostile", false),
      Answer("Greedy", false),
    ],
  ));

  list.add(Question(
    "Choose the correct spelling:",
    [
      Answer("Recieve", false),
      Answer("Receive", true),
      Answer("Recievee", false),
      Answer("Receve", false),
    ],
  ));

  list.add(Question(
    "What is an antonym for 'vivid'?",
    [
      Answer("Bright", false),
      Answer("Dull", true),
      Answer("Colorful", false),
      Answer("Lively", false),
    ],
  ));

  list.add(Question(
    "Which word means 'to make amends for'?",
    [
      Answer("Forgive", false),
      Answer("Redeem", true),
      Answer("Pardon", false),
      Answer("Absolve", false),
    ],
  ));

  list.add(Question(
    "What is the plural form of 'child'?",
    [
      Answer("Children", true),
      Answer("Childs", false),
      Answer("Childen", false),
      Answer("Childs", false),
    ],
  ));

  list.add(Question(
    "Which word means 'the act of giving up a position or power'?",
    [
      Answer("Resignation", true),
      Answer("Appointment", false),
      Answer("Promotion", false),
      Answer("Rejection", false),
    ],
  ));

  list.add(Question(
    "What does 'ominous' mean?",
    [
      Answer("Positive", false),
      Answer("Hopeful", false),
      Answer("Foreboding", true),
      Answer("Cheerful", false),
    ],
  ));

  list.add(Question(
    "Choose the synonym for 'precise':",
    [
      Answer("Accurate", true),
      Answer("Vague", false),
      Answer("Confused", false),
      Answer("Inaccurate", false),
    ],
  ));

  list.add(Question(
    "What is the opposite of 'brave'?",
    [
      Answer("Fearless", false),
      Answer("Courageous", false),
      Answer("Timid", true),
      Answer("Valiant", false),
    ],
  ));

  list.add(Question(
    "What is a synonym for 'exquisite'?",
    [
      Answer("Ugly", false),
      Answer("Beautiful", true),
      Answer("Ordinary", false),
      Answer("Common", false),
    ],
  ));

  list.add(Question(
    "What is the meaning of 'tenacious'?",
    [
      Answer("Weak", false),
      Answer("Determined", true),
      Answer("Careless", false),
      Answer("Lazy", false),
    ],
  ));

  list.add(Question(
    "Choose the correct spelling:",
    [
      Answer("Innocent", true),
      Answer("Inocent", false),
      Answer("Innocant", false),
      Answer("Innecent", false),
    ],
  ));

  list.add(Question(
    "What is the plural form of 'mouse'?",
    [
      Answer("Mouses", false),
      Answer("Mice", true),
      Answer("Micees", false),
      Answer("Mousen", false),
    ],
  ));

  list.add(Question(
    "What does 'eloquent' mean?",
    [
      Answer("Inarticulate", false),
      Answer("Fluent", true),
      Answer("Simple", false),
      Answer("Awkward", false),
    ],
  ));

  return list;
}
