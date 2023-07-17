import 'package:flutter/material.dart';
import '../Screens/questions_screen.dart';
import 'package:iti_flutter/Shared/category_card.dart';
import 'package:iti_flutter/data/questions.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CatCard(
          testName: "Python Test",
          cardColor: Colors.deepOrange,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "Python Test",
                        themeColor: Colors.deepOrange,
                        questionsList: pyTest,
                      )),
            );
          },
        ),
        CatCard(
          testName: "CSS Test",
          cardColor: const Color.fromARGB(255, 255, 255, 255),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "CSS Test",
                        themeColor: const Color.fromARGB(255, 255, 255, 255),
                        questionsList: cssTest,
                      )),
            );
          },
        ),
        CatCard(
          testName: "Flutter Test",
          cardColor: const Color.fromARGB(201, 71, 8, 197),
          onTabFunction: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen(
                        testName: "Flutter Test",
                        themeColor: const Color.fromARGB(201, 71, 8, 197),
                        questionsList: flutterTest,
                      )),
            );
          },
        ),
      ]),
    );
  }
}
