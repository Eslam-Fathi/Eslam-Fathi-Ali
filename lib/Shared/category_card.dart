import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              child: Text(
            testName!,
            style: GoogleFonts.pacifico(fontSize: 34, color: Colors.black),
          )),
        ),
      ),
    );
  }
}
