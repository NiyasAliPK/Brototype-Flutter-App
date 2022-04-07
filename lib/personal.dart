import 'package:flutter/material.dart';

class ScreenPersonal extends StatelessWidget {
  final String name;

  const ScreenPersonal({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("$name's Profile"),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.wallpapersafari.com/4/11/WofyVJ.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(name),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
