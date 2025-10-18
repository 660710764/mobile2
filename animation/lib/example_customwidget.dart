import 'package:animation/components/custom_widget.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custome Widget')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomWidget(text: 'KUY', color: Colors.red),
            CustomWidget(text: 'TEST', color: Colors.yellow),
            CustomWidget(text: 'HAHA', color: Colors.green),
          ],
        ),
      ),
    );
  }
}
