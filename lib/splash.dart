import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/login.dart';
import 'package:login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);
  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    userLoginStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
        child: Center(
          child: Image.asset('assets/images/brototype.jpg'),
        ),
      ),
    );
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (ctx) => const ScreenLogin(),
      ),
    );
  }

  Future<void> userLoginStatus() async {
    final _SharedPrefKey = await SharedPreferences.getInstance();
    final _UserLoggedIn = _SharedPrefKey.getBool(LOGIN_STATUS_KEY);
    if (_UserLoggedIn == null || _UserLoggedIn == false) {
      gotoLogin();
    } else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const ScreenHome(),
        ),
      );
    }
  }
}
