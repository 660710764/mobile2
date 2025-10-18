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
      ),
      home: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Profile(
              name: 'Banlu Chimsing',
              position: 'Programmer',
              email: 'chimsing_b@silpakorn.edu',
              phoneNumber: '092-516-5069',
              imageUrl: 'https://picsum.photos/200',
            ),
          ],
        ),
      ),
    );
  }
}
