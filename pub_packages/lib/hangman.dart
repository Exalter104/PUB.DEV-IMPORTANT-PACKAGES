import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:flutter/material.dart';

import 'homescreen.dart';

class Hangman extends StatefulWidget {
  static const String id = "hangman";
  const Hangman({super.key});

  @override
  State<Hangman> createState() => _HangmanState();
}

class _HangmanState extends State<Hangman> {
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    height: 150.0,
                    child: DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Agne',
                      ),
                      child: AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText('H_NG__N'),
                        ],
                      ),
                    )),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    color: Colors.white,
                    minWidth: 250,
                    height: 50,
                    onPressed: () {
                      Navigator.pushNamed(context, HomeScreen.id);
                    },
                    child: const Text(
                      "PLAY GAME",
                      style: TextStyle(fontSize: 19),
                    )),
                const SizedBox(
                  height: 15,
                ),
                MaterialButton(
                    color: Colors.white,
                    minWidth: 250,
                    height: 50,
                    onPressed: () {},
                    child: const Text(
                      "MODES",
                      style: TextStyle(fontSize: 19),
                    )),
              ],
            ),
          ]),
        ));
  }
}
