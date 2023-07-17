import 'package:flutter/material.dart';
import '../Screens/login_screen.dart';
import '../Screens/intro_screen.dart';

class ResultScreen extends StatelessWidget {
  final int index;
  final int score;
  const ResultScreen({Key? key, required this.index, required this.score})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/QUIZZATO-BG.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Hello ',
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: userNameController.text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 33, 11, 224)),
                        ),
                        const TextSpan(
                          text: ', your Score is ',
                        ),
                        TextSpan(
                          text: '$score /${index + 1} ',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Color.fromARGB(255, 33, 11, 224)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IntroScreen(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.refresh),
                    label: const Text('Restart!'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
