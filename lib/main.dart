import 'package:flutter/material.dart';

void main() {
  runApp(const FlutterTask());
}

class FlutterTask extends StatelessWidget {
  const FlutterTask({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text('Hello, Flutter!', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}
