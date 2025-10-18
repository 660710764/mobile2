import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  final String text;
  final Color color;
  const CustomWidget({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(text),
    );
  }
}
