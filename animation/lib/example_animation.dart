import 'package:flutter/material.dart';

class ExampleAnimation extends StatefulWidget {
  const ExampleAnimation({super.key});

  @override
  State<ExampleAnimation> createState() => _ExampleAnimationState();
}

class _ExampleAnimationState extends State<ExampleAnimation> {
  double _size = 100;
  bool _check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              height: _size,
              width: _size,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_check == false) {
                    _size = 200;
                    _check = true;
                  } else if (_check == true) {
                    _size = 100;
                    _check = false;
                  }
                });
              },
              child: Text('Animation Box'),
            ),
          ],
        ),
      ),
    );
  }
}
