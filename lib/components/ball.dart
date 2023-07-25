import 'package:flutter/material.dart';

import '../constants.dart';

class Ball extends StatefulWidget {
  Ball({
    super.key,
    required this.onPressed,
  });

  final Function(Ball) onPressed;
  final AnswerState answerStatus = AnswerState();

  AnswerState createState() => answerStatus;

  updateAnswer(String value) {
    answerStatus.updateAnswer(value);
  }
}

class AnswerState extends State<Ball> {
  String answerValue = '';

  updateAnswer(String value) {
    setState(() {
      answerValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            answerValue,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: kResultTextStyles,
          ),
          GestureDetector(
            child: SizedBox(
              width: 320.0,
              height: 320.0,
              child: Image.asset('assets/images/ball.png'),
            ),
            onTap: () => widget.onPressed(widget),
          ),
          const Padding(padding: EdgeInsets.only(top: 40)),
          SizedBox(
            width: 246.0,
            height: 42.0,
            child: Image.asset('assets/images/shadow_ball.png'),
          )
        ],
      ),
    );
  }
}
