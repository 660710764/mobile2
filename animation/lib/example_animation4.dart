import 'package:flutter/material.dart';

class ExampleAnimation4 extends StatefulWidget {
  const ExampleAnimation4({super.key});

  @override
  State<ExampleAnimation4> createState() => _ExampleAnimation4State();
}

class _ExampleAnimation4State extends State<ExampleAnimation4> {
  bool _isFirst = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 2),
              child: _isFirst
                  ? Container(height: 100, width: 100, color: Colors.yellow)
                  : Container(height: 100, width: 100, color: Colors.green),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFirst = !_isFirst;
                });
              },
              child: Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}
