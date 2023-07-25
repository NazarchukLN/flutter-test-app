import 'package:flutter/material.dart';
import 'package:surf_practice_magic_ball/constants.dart';
import 'package:surf_practice_magic_ball/screen/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

/// App,s main widget.
class MyApp extends StatelessWidget {
  /// Constructor for [MyApp].
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAppName,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
