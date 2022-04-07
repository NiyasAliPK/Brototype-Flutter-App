import 'package:flutter/material.dart';
import 'package:login_page/home.dart';
import 'package:login_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({Key? key}) : super(key: key);

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final String _username = 'Niyas Ali';

  final String _password = '7356669143';

  final _unfromController = TextEditingController();

  final _psfromController = TextEditingController();

  String _errorMessage = "Entered credentials doesn't match";

  bool _isDatamatched = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 3, 181, 252), Colors.purple]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 205, 211),
          title: const Text('BROTOTYPE'),
        ),
        body: SafeArea(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(
                    colors: [Colors.purple, Color.fromARGB(255, 3, 181, 252)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 65, 65, 65),
                      offset: Offset.zero,
                      spreadRadius: 3,
                      blurStyle: BlurStyle.normal,
                      blurRadius: 10)
                ],
                // color: Colors.transparent,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70),
                child: Column(
                  children: [
                    const Text(
                      'Login Here',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 25, 0, 25),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: TextField(
                          controller: _unfromController,
                          decoration: const InputDecoration(
                            hintText: 'Enter your Username',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: TextField(
                        obscureText: true,
                        controller: _psfromController,
                        decoration: const InputDecoration(
                          hintText: 'Enter your Password',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Visibility(
                      child: Text(
                        _errorMessage,
                        style: const TextStyle(color: Colors.red, fontSize: 17),
                      ),
                      visible: !_isDatamatched,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        validation();
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          )),
        ),
      ),
    );
  }

  void validation() async {
    if (_unfromController.text.isEmpty || _psfromController.text.isEmpty) {
      setState(() {
        _errorMessage = 'Please fill both fields';
      });
    } else if (_username == _unfromController.text &&
        _password == _psfromController.text) {
      setState(() async {
        final _sharedPrefKey = await SharedPreferences.getInstance();
        await _sharedPrefKey.setBool(LOGIN_STATUS_KEY, true);

        _isDatamatched = true;
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return const ScreenHome();
            },
          ),
        );
      });
    } else {
      setState(() {
        _errorMessage = "Entered credentials doesn't match, Try again.";
        _isDatamatched = false;
      });
    }
  }
}
