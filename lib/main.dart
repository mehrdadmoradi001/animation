import 'package:animation_proj/animation_switch.dart';
import 'package:animation_proj/container_animation.dart';
import 'package:animation_proj/opacity_animation.dart';
import 'package:animation_proj/position_animation.dart';
import 'package:animation_proj/rotation_animation.dart';
import 'package:animation_proj/scale_animation.dart';
import 'package:animation_proj/text_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationSwitch(),
    );
  }
}
