import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Sachin App",
    home: HomePage(),
  ));
}

// ignore: use_key_in_widget_constructors
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome App"),
      ),
      body: const Center(child: Text("Hi Flutter")),
    );
  }
}
