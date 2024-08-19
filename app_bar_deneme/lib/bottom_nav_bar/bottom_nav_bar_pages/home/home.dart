import 'package:app_bar_deneme/bottom_nav_bar/bottom_nav_bar_pages/home/app_bar/home_app_bar.dart';
import 'package:flutter/material.dart';

import 'catogory/food_category.dart';
import 'food_cards/data.dart';
import 'food_cards/food_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int notificationNumber = 0;
  String selectedCategory = "Çorba";

  void _onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<FoodModel> filteredFoodData = foodData
        .where((foodItem) => foodItem.categoryName == selectedCategory)
        .toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(140),
        child: HomeAppBar(
          notificationCount: notificationNumber,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            FoodCategory(onCategorySelected: _onCategorySelected),
            Expanded(
              child: ListView.builder(
                itemCount: filteredFoodData.length,
                itemBuilder: (context, index) {
                  return FoodCard(foodItem: filteredFoodData[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
