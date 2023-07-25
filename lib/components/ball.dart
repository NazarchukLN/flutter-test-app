import 'package:flutter/material.dart';

import '../constants.dart';

class Ball extends StatefulWidget {
  Ball({
    super.key,
    required this.onPressed,
  });

  final Function(AnswerState) onPressed;

  @override
  AnswerState createState() => AnswerState();
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
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              GestureDetector(
                child: SizedBox(
                  width: 320.0,
                  height: 320.0,
                  child: Image.asset('assets/images/ball.png'),
                ),
                onTap: () => widget.onPressed(this),
              ),
              Text(
                answerValue,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: kResultTextStyles,
              ),
            ],
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
