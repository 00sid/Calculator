import 'package:calculator/botton/button2.dart';
import 'package:calculator/botton/clickable_botton.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isBottonPressed = false;
  void bottonPressed() {
    setState(() {
      if (isBottonPressed == false) {
        isBottonPressed = true;
      } else if (isBottonPressed == true) {
        isBottonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: NeuBotton(
          onTap: bottonPressed,
          isBottonPressed: isBottonPressed,
        ),
      ),
      //     body: Center(
      //     child: CLickButton(),
      //  ),
    );
  }
}
