import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Shared/answer_button.dart';
import '../Screens/results_screen.dart';

class QuestionsScreen extends StatefulWidget {
  final Color? themeColor;
  final String? testName;
  final List questionsList;

  const QuestionsScreen(
      {super.key, this.themeColor, this.testName, required this.questionsList});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.themeColor,
        leadingWidth: 100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: Center(
            child: Text(
          widget.testName!,
          style: const TextStyle(color: Colors.black),
        )),
        title: Column(
          children: [
            const Text(
              "Question No:",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "${index + 1}/${widget.questionsList.length}",
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: GestureDetector(
              child: Image.asset(
                'images/QUIZZATO-logo.png',
                width: 60.0,
                height: 60.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/QUIZZATO-BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          margin: const EdgeInsets.all(40),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Text(
                  widget.questionsList[index]["question"],
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              for (int i = 0;
                  i < (widget.questionsList[index]["answers"] as List).length;
                  i++)
                AnswerButton(
                  answerText: widget.questionsList[index]["answers"][i]["ans"],
                  onTap: () {
                    score = score +
                            widget.questionsList[index]["answers"][i]["score"]
                        as int;

                    if (index == widget.questionsList.length - 1) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen(
                                  index: index,
                                  score: score,
                                )),
                      );
                    } else {
                      setState(() {
                        index++;
                      });
                    }
                  },
                )
            ],
          ),
        ),
      ),
    );
  }
}
