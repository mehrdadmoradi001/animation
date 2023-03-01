import 'package:flutter/material.dart';

class AnimationSwitch extends StatefulWidget {
  const AnimationSwitch({Key? key}) : super(key: key);

  @override
  State<AnimationSwitch> createState() => _AnimationSwitchState();
}

class _AnimationSwitchState extends State<AnimationSwitch> {
  bool _isSwitcherTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _isSwitcherTrue = !_isSwitcherTrue;
            });
          },
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 850), //
            child: (_isSwitcherTrue)
                ? Image(
                    key: Key('1'),
                    image: AssetImage('images/khiyar.png'),//
                  )
                : Image(
              key: Key('2'),
              image: AssetImage('images/gozhe.png'),
            ),
          ),
        ),
      ),
    );
  }
}
