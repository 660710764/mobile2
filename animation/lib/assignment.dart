import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  final double _offOpacity = 0.3;
  final double _onOpacity = 1.0;

  double _redOpacity = 1.0;
  double _yellowOpacity = 0.3;
  double _greenOpacity = 0.3;

  int _activeIndex = 0;

  void _changeLight() {
    setState(() {
      if (_activeIndex == 0) {
        _redOpacity = _offOpacity;
        _yellowOpacity = _onOpacity;
        _greenOpacity = _offOpacity;
      } else if (_activeIndex == 1) {
        _redOpacity = _offOpacity;
        _yellowOpacity = _offOpacity;
        _greenOpacity = _onOpacity;
      } else if (_activeIndex == 2) {
        _redOpacity = _onOpacity;
        _yellowOpacity = _offOpacity;
        _greenOpacity = _offOpacity;
      }

      _activeIndex = (_activeIndex + 1) % 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _redOpacity,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              opacity: _yellowOpacity,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.yellow,
                ),
              ),
            ),
            SizedBox(height: 20),
            AnimatedOpacity(
              opacity: _greenOpacity,
              duration: Duration(seconds: 1),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _changeLight, child: Text('เปลี่ยนสีไฟ')),
          ],
        ),
      ),
    );
  }
}
