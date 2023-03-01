import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({Key? key}) : super(key: key);

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedDefaultTextStyle(
          duration: Duration(milliseconds: 700),
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.red),//
          child: Text('MehrdadMoradi'),
        ),
      ),
    );
  }
}
