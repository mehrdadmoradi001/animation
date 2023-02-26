import 'package:flutter/material.dart';

class PositionAnimation extends StatefulWidget {
  const PositionAnimation({Key? key}) : super(key: key);

  @override
  State<PositionAnimation> createState() => _PositionAnimationState();
}

class _PositionAnimationState extends State<PositionAnimation> {
  double top = 70;
  double left = 70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.bounceIn,
            top: top,
            left: left,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  top +=100;
                  left = left + 100;
                });
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('images/khiyar.png'),//
              ),
            ),
            duration: Duration(milliseconds: 1000),
          ),
        ],
      ),
    );
  }
}
