import 'package:flutter/material.dart';
import 'package:iti_flutter/quiz.dart';
import 'package:iti_flutter/Shared/category_card.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/QUIZZATO-BG.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CatCard(
                cardColor: Colors.amber,
                testName: "Flutter Test",
              ),
              CatCard(
                cardColor: Color.fromARGB(255, 7, 117, 95),
                testName: "Flutter Test yet again,",
              ),
              CatCard(
                cardColor: Color.fromARGB(255, 179, 8, 191),
                testName: "Wahat is this one about?",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
