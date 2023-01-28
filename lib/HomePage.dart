// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'mainScreen.dart';
import 'passesPg.dart';
import 'explorePg.dart';
import 'savedPg.dart';
import 'profilePg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  final screens = [MainScreen(), Passes(), Explore(), Saved(), Profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 194, 194),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text(
          "Good evening!",
          // ignore: prefer_const_constructors
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        // ignore: prefer_const_constructors
        bottom: PreferredSize(child: Text("Chennai"), preferredSize: Size.zero),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        iconSize: 33,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Color.fromARGB(255, 164, 59, 59)),
          BottomNavigationBarItem(
            icon: Icon(Icons.rectangle_rounded),
            label: "Passes",
            backgroundColor: Color.fromARGB(255, 164, 59, 59),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: "Saved",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.man),
            label: "Profile",
          )
        ],
      ),
    );
  }
}
