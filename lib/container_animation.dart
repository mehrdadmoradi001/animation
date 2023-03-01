import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({Key? key}) : super(key: key);

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: ((context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                child: AnimatedContainer(
                  margin: EdgeInsets.all(20),
                  duration: Duration(milliseconds: 500),
                  width: (index == _selectedIndex) ? 100 : 50,
                  height: 100,
                  color: (index == _selectedIndex) ? Colors.blue : Colors.green,//
                  child: AnimatedScale(
                    duration: Duration(milliseconds: 600),
                    scale: (_selectedIndex == index) ? 1 : 0,
                    child: Center(
                      child: Text(
                        'آبی',
                        style: TextStyle(
                          fontSize: (_selectedIndex==index ? 20:16),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
