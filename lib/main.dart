import 'package:awesome_app/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Sachin App",
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.orange),
    ));
}