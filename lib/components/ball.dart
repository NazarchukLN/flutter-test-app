import 'package:flutter/material.dart';

class Ball extends StatelessWidget {
  const Ball({
    super.key,
    this.onPressed = _defaultOnPressed,
  });

  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 320.0,
            height: 320.0,
            child: Image.asset('assets/images/ball.png'),
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

  static dynamic _defaultOnPressed() {}
}
