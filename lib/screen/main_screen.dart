import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/components/info_text.dart';
import 'package:surf_practice_magic_ball/components/ball.dart';
import 'package:surf_practice_magic_ball/constants.dart';
import 'package:surf_practice_magic_ball/core/business_logic.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final Ball ballWidget = Ball(onPressed: (state) {
    MockBusinessLogic().getAnswer().then((result) => state.updateAnswer(result));
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ballWidget,
              const Padding(padding: EdgeInsets.only(bottom: 20.0, top: 30.0)),
              const InfoText(text: kActionText)
            ],
          ),
        ),
      ),
    );
  }
}