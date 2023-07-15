import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iti_flutter/quiz.dart';

class CatCard extends StatelessWidget {
  final String? testName;
  final Color? cardColor;
  final Function()? onTabFunction;

  const CatCard({this.testName, this.cardColor, this.onTabFunction});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTabFunction,
        child: Container(
          color: cardColor,
          child: Center(
              child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                testName!,
                style: GoogleFonts.pacifico(fontSize: 34, color: Colors.white),
              ),
              Align(
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Quiz()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    elevation: .9,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11),
                    ),
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Start Quiz!"),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
