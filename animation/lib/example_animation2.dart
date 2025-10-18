import 'package:flutter/material.dart';

class ExampleAnimation2 extends StatefulWidget {
  const ExampleAnimation2({super.key});

  @override
  State<ExampleAnimation2> createState() => _ExampleAnimationState();
}

class _ExampleAnimationState extends State<ExampleAnimation2> {
  double _size = 100;
  bool _check = false;
  double _opacity = 0;

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
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Text(
                'Hello TEST',
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  if (_check == false) {
                    _size = 200;
                    _opacity = 1;
                    _check = true;
                  } else if (_check == true) {
                    _size = 100;
                    _opacity = 0;
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
