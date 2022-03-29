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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Colors.green,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                width: 100,
                height: 100,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
