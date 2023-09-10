import 'package:flutter/material.dart';
import 'package:quizapp/Splash_screen.dart';

void main() {
  runApp(const MyApp());
  // void initState() {
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
