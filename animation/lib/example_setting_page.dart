import 'package:flutter/material.dart';

class ExampleSettingPage extends StatefulWidget {
  const ExampleSettingPage({super.key});

  @override
  State<ExampleSettingPage> createState() => _ExampleSettingPageState();
}

class _ExampleSettingPageState extends State<ExampleSettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting'), backgroundColor: Colors.blue),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Light'),
            secondary: Icon(Icons.notifications),
            value: true,
            onChanged: (bool? value) {},
          ),
        ],
      ),
    );
  }
}
