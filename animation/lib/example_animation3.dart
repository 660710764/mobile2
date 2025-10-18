import 'package:flutter/material.dart';

class ExampleAnimation3 extends StatefulWidget {
  const ExampleAnimation3({super.key});

  @override
  State<ExampleAnimation3> createState() => _ExampleAnimation3State();
}

class _ExampleAnimation3State extends State<ExampleAnimation3> {
  bool _isLeft = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            left: _isLeft ? 20 : 200,
            top: 20,
            child: Container(color: Colors.red, height: 100, width: 100),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  _isLeft = !_isLeft;
                });
              },
              child: Text('Move'),
            ),
          ),
        ],
      ),
    );
  }
}
