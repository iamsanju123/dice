import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "DICE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (){
               int random1 = Random().nextInt(6) + 1;
               setState(() {
                 leftDice = random1;
               });
              },
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/dice$leftDice.png", height: 200, width: 200,),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                int random2 = Random().nextInt(6) + 1;
                setState(() {
                  rightDice = random2;
                });
              },
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/dice$rightDice.png", height: 200, width: 200,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
