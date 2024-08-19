import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum MealType {
  Soup,
  MainCourse,
  Dessert,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Günlük Yemek',
            style: GoogleFonts.roboto(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int randomSoup = 1;
  int randomMeal = 1;
  int randomDessert = 1;
  MealType selectedMeal = MealType.Soup;

  List<String> sopapsName = [
    'Yayla Corbasi',
    'Mercimek Çorbası',
    'Tavuksuyu Çorbası',
    'Domates Çorbası',
    'Sebze Çorbası'
  ];

  List<String> mealsName = [
    'Pilav',
    'Makarna',
    'Tavuklu Mantar Sote',
    'Alinazik',
    'Patlıcan Musakka'
  ];

  List<String> dessertName = [
    'Soğuk Baklava',
    'Kıbrıs Tatlısı',
    'Çilekli Tremisu',
    'Yalancı Tavukgöğüsü',
    'İrmik Tatlısı'
  ];

  void getRandomNumbers() {
    var random = Random();
    setState(() {
      switch (selectedMeal) {
        case MealType.Soup:
          randomMeal = random.nextInt(5) + 1;
          randomDessert = random.nextInt(5) + 1;
          break;
        case MealType.MainCourse:
          randomSoup = random.nextInt(5) + 1;
          randomDessert = random.nextInt(5) + 1;
          break;
        case MealType.Dessert:
          randomSoup = random.nextInt(5) + 1;
          randomMeal = random.nextInt(5) + 1;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  selectedMeal = MealType.Soup;
                  getRandomNumbers();
                },
                child: Image.asset('assets/images/corba_$randomSoup.png'),
              ),
            ),
          ),
          Text(
            sopapsName[randomSoup - 1],
            style: const TextStyle(
              fontSize: 22.0,
            ),
          ),
          const SizedBox(
            width: 200.0,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  selectedMeal = MealType.MainCourse;
                  getRandomNumbers();
                },
                child: Image.asset('assets/images/yemek_$randomMeal.png'),
              ),
            ),
          ),
          Text(
            mealsName[randomMeal - 1],
            style: const TextStyle(
              fontSize: 22.0,
            ),
          ),
          const SizedBox(
            width: 200.0,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  selectedMeal = MealType.Dessert;
                  getRandomNumbers();
                },
                style: ButtonStyle(
                  overlayColor:
                      MaterialStateColor.resolveWith((states) => Colors.white),
                ),
                child: Image.asset('assets/images/tatlı_$randomDessert.png'),
              ),
            ),
          ),
          Text(
            dessertName[randomDessert - 1],
            style: const TextStyle(
              fontSize: 22.0,
            ),
          ),
          const SizedBox(
            width: 200.0,
            child: Divider(
              height: 5.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
