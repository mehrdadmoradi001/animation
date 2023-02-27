import 'package:flutter/material.dart';

class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({Key? key}) : super(key: key);

  @override
  State<ScaleAnimation> createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  double scale = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedScale(
          scale: scale,
          duration: Duration(seconds: 1),
          curve: Curves.bounceOut,
          child: GestureDetector(
            onTap: () {
              setState(() {
                scale++;
              });
            },
            child: SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('images/khiyar.png'),//
            ),
          ),
        ),
      ),
    );
  }
}
