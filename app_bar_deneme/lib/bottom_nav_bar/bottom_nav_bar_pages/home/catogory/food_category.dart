import 'package:flutter/material.dart';

import 'data.dart';

class FoodCategory extends StatefulWidget {
  final Function(String) onCategorySelected;

  const FoodCategory({Key? key, required this.onCategorySelected})
      : super(key: key);

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text(
            "Yemek Kategorisi",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 12),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      for (int i = 0; i < categoryData.length; i++) {
                        categoryData[i].active = false;
                      }
                      categoryData[index].active = true;
                    });
                    widget.onCategorySelected(categoryData[index].name);
                    print("${categoryData[index].name} seçildi");
                  },
                  child: Material(
                    elevation: 0,
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      width: 90,
                      decoration: BoxDecoration(
                        color: categoryData[index].active
                            ? Colors.red[100]
                            : Colors.red[50],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(
                            image: categoryData[index].icon,
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            categoryData[index].name,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
