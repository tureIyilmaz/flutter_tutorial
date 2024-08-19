import 'question.dart';

class QuestionsData {
  int _questionIndex = 0;

  final List<Question> _questions = [
    Question("Flutter is a mobile app SDK developed by Facebook.", false),
    Question(
        "Flutter supports app development on both Android and iOS platforms.",
        true),
    Question("Flutter uses the Dart programming language.", true),
    Question(
        "Widgets are the basic building blocks of the user interface in Flutter.",
        true),
    Question(
        "Flutter is used only for mobile app development and does not support web and desktop applications.",
        false),
    Question("Flutter apps provide native performance.", true),
    Question(
        "Hot reload feature in Flutter accelerates the development process.",
        true),
    Question(
        "In Flutter, state management is done only with 'setState'; there are no other methods.",
        false),
    Question("Flutter has one main themes: Cupertino.", false),
    Question("Widgets in Flutter are flexible and customizable.", true),
    Question("Flutter is an open-source project.", true),
    Question("Flutter does not use JavaScript like React Native.", true),
    Question("In Flutter, 'AnimationController' is used for animations.", true),
    Question(
        "Flutter enables app development for different platforms with a single codebase.",
        true),
    Question("In Flutter, fetching data using REST APIs is possible.", true),
    Question("Flutter can be easily integrated with Firebase.", true),
    Question("Flutter supports app development only for Google Play.", false),
    Question("Platform-specific coding is possible in Flutter.", true),
    Question("Flutter doesn't supports all third-party libraries.", false),
    Question(
        "The first stable version of Flutter was released in 2012.", false),
  ];

  String getQuestionText() {
    return _questions[_questionIndex].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionIndex].answer;
  }

  void nextQuestion() {
    if (_questionIndex + 1 < _questions.length) {
      _questionIndex++;
    }
  }

  bool isLastQuestion() {
    if (_questionIndex + 1 == _questions.length) {
      return true;
    } else {
      return false;
    }
  }

  void restartTest() {
    _questionIndex = 0;
  }
}
