import 'package:animation/assignment.dart';
import 'package:animation/example_animation.dart';
import 'package:animation/example_animation2.dart';
import 'package:animation/example_animation3.dart';
import 'package:animation/example_animation4.dart';
import 'package:animation/example_setting_page.dart';
import 'package:flutter/material.dart';
import 'package:animation/example_customwidget.dart';
import 'package:animation/example_scoreboard.dart';
import 'package:animation/example_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          titleLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      home: const Assignment(),
    );
  }
}
