import 'package:flutter/material.dart';

class OpacityAnimation extends StatefulWidget {
  const OpacityAnimation({Key? key}) : super(key: key);

  @override
  State<OpacityAnimation> createState() => _OpacityAnimationState();
}

class _OpacityAnimationState extends State<OpacityAnimation> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacity,
              duration: Duration(seconds: 1),
              child: Container(
                height: 200,
                width: 200,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  if(opacity == 1){
                    opacity = 0;
                  }else{
                    opacity = 1;
                  }
                });
              },
              child: Text('Click to Fade'),
            ),
          ],
        ),
      ),
    );
  }
}
