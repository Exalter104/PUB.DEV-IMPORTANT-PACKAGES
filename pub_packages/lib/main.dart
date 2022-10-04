import 'package:flutter/material.dart';
import 'package:pub_packages/hangman.dart';
import 'package:pub_packages/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Hangman(),
      initialRoute: Hangman.id,
      routes: {
        Hangman.id: ((context) => const Hangman()),
        HomeScreen.id: ((context) => const HomeScreen()),
      },
    );
  }
}
