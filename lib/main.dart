import 'package:flutter/material.dart';
import 'Screens/opening.dart';
import 'Screens/login.dart';

void main() {
  runApp(const OurQuizzApp());
}

class OurQuizzApp extends StatelessWidget {
  const OurQuizzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpeningScreen(),
    );
  }
}
