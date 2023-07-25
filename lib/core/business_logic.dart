import 'dart:math';

abstract class IBusinessLogic {
  Future<String> getAnswer();
}

class MockBusinessLogic implements IBusinessLogic {
  final _random = Random();
  final List<String> _mockAnswers = ['Yes', 'No', 'Go to work', 'Nothing'];

  @override
  Future<String> getAnswer() async {
    return await Future.delayed(
      const Duration(seconds: 2),
          () => _mockAnswers[_random.nextInt(_mockAnswers.length)],
    );

    //return await Future(() => _mockAnswers[_random.nextInt(_mockAnswers.length)]);
  }
}