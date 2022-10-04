import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "homescreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: const Center(child: Text("Hangman Game")),
          backgroundColor: Colors.teal,
        ),
        body: SafeArea(
            child: Column(children: [
          const Image(image: AssetImage("images/gallow.png")),
          const SizedBox(
            height: 75,
          ),
//EASY MODE
          MaterialButton(
              color: Colors.white,
              minWidth: 250,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text(
                "EASY MODE",
                style: TextStyle(fontSize: 19),
              )),
          const SizedBox(
            height: 15,
          ),

//CLASSIC MODE

          MaterialButton(
              color: Colors.white,
              minWidth: 250,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text(
                "CLASSIC MODE",
                style: TextStyle(fontSize: 19),
              )),
          const SizedBox(
            height: 15,
          ),
//PRO MODE MODE
          MaterialButton(
              color: Colors.white,
              minWidth: 250,
              height: 50,
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text(
                "PRO MODE",
                style: TextStyle(fontSize: 19),
              )),
        ])));
  }
}
