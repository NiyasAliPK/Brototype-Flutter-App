import 'package:flutter/material.dart';
import 'package:login_page/splash.dart';

const LOGIN_STATUS_KEY = 'UserLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: const Color.fromARGB(255, 35, 205, 211)),
      title: 'Week 4 Project',
      debugShowCheckedModeBanner: false,
      home: const ScreenSplash(),
    );
  }
}
