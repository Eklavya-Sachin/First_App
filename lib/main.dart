// import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Sachin App",
      home: const LoginPage(),
      theme: ThemeData(primarySwatch: Colors.orange),
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage()
      }));
}
