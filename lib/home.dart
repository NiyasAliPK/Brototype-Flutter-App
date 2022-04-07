import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_page/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 3, 181, 252), Colors.purple],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Scaffold(
        drawer: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 205, 211),
              ),
              child: Center(
                child: Text('BROTOTYPE',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 25)),
              ),
            ),
            ListTile(
              title: const Text('Courses',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: const Text('Co-Working Spaces',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: const Text('Contact Us',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255), fontSize: 25)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: const Text(
                'Support',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 25),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 205, 211),
          title: const Text(
            'Courses Available',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  signOut();
                },
                icon: const Icon(Icons.exit_to_app_rounded))
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/web.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Web Development',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/MobileApp.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Mobile App Development',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/CyberSecurity.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Cyber Security',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/Artificial inteligence.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Artificial Intelligence',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/images/Machine learning.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Machine Learning',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/datascience.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Data Science',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/block chain.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Block Chain',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/VR.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Virtual Reality',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/softTesting.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'Software Testing',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {},
                splashColor: const Color.fromARGB(255, 35, 205, 211),
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/DevOps.jpg'),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
              ),
              TextButton.icon(
                onPressed: () {},
                label: const Text(
                  'DevOps',
                  style: TextStyle(color: Colors.white),
                ),
                icon: const Icon(
                  Icons.info_rounded,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void signOut() async {
    final _sharedPrefKey = await SharedPreferences.getInstance();
    await _sharedPrefKey.clear();

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const ScreenLogin()),
        (route) => false);
  }
}
