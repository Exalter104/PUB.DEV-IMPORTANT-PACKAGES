import 'package:flutter/material.dart';

class Easymod extends StatefulWidget {
  static const String id = "easymod";
  const Easymod({super.key});

  @override
  State<Easymod> createState() => _EasymodState();
}

class _EasymodState extends State<Easymod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("EASY MODE")),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Easymod.id);
              },
              child: const Center(
                  child: Text(
                "EASY MODE FOR 30%",
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(255, 147, 2, 2)),
              )))),
    );
  }
}
