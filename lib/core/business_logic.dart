import 'dart:math';

abstract class IBusinessLogic {
  String getAnswer();
}

class MockBusinessLogic implements IBusinessLogic {
  final _random = Random();
  final List<String> _mockAnswers = ['Yes', 'No', 'Go to work', 'Nothing'];

  @override
  String getAnswer() {
    var result = _mockAnswers[_random.nextInt(_mockAnswers.length)];
    return result;
  }
}
