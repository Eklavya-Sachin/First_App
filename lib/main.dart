// import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Awesome App",
      home: Constants.prefs.getBool("loggedIn") == true
          ? const HomePage()
          : const LoginPage(),
      theme: ThemeData(primarySwatch: Colors.orange),
      routes: {
        "/login": (context) => const LoginPage(),
        "/home": (context) => const HomePage()
      }));
}
