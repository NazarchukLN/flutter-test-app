import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart' as http;

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
  }
}

class BusinessLogic implements IBusinessLogic {
  @override
  Future<String> getAnswer() async {
    final response = await http.get(Uri.parse('https://eightballapi.com/api'));
    var answer = checkResponse(response);
    return answer;
  }

  String checkResponse(http.Response response) {
    if (response.statusCode == 200) {
      return jsonDecode(response.body)['reading'];
    } else {
      throw Exception("${response}");
    }
  }
}
