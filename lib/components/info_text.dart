import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/constants.dart';

class InfoText extends StatelessWidget {
  const InfoText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) => ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 175, height: 36),
        child: Text(
          text,
          maxLines: 2,
          textAlign: TextAlign.center,
          style: kInfoTextStyles,
        ),
      );
}
