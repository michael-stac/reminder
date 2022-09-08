import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
          items: const [
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home), label: ''),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.photoFilm), label: ''),
        BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.phone), label: '')
      ]),
    );
  }
}