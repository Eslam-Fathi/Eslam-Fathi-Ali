import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.network(
            'https://fiasco.design/wp-content/uploads/2022/09/how-we-use-figma-to-improve-our-creative-process-3-1920x1014.png',
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Let's QuiZz",
                    style: GoogleFonts.lato(
                      color: Colors.teal,
                      fontSize: 30,
                    )),
                const SizedBox(
                  height: 12,
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(255, 255, 255, 255)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                      child: const Text(
                        "Start",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      )),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
