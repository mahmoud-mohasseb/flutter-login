import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.0,
              fontFamily: 'MoonDance-Regular',
              color:Colors.cyan,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('It is not enough to do your best,'),
                TyperAnimatedText('you must know what to do,'),
                TyperAnimatedText('and then do your best'),
                TyperAnimatedText('- W.Edwards Deming'),
              ],
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        )
      ),
    );
  }
}
