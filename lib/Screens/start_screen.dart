import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/QUIZZATO-white-logo.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 100),
            const SizedBox(height: 100),
            Text(
              'Learn Flutter the fun way!\n     We only have flutter!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 237, 223, 252),
                fontSize: 24,
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                elevation: .5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                foregroundColor: Colors.white,
              ),
              label: const Text('Start Quiz'),
              icon: const Icon(Icons.arrow_right_alt),
            )
          ],
        ),
      ),
    );
  }
}
