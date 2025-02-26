import 'package:flutter/material.dart';

void main() {
  runApp(const Selaty());
}

class Selaty extends StatelessWidget {
  const Selaty ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}
