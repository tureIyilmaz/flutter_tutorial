import 'package:flutter/material.dart';

import '../../../bottom_nav_bar.dart';
import 'data.dart';

class FoodCard extends StatelessWidget {
  final FoodModel foodItem;

  const FoodCard({Key? key, required this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int discountedPrice = (foodItem.price * 0.9).toInt();

    return Container(
      padding: EdgeInsets.fromLTRB(10, 5, 25, 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        color: Colors.redAccent[50],
        child: ListTile(
          minVerticalPadding: 20,
          leading: Container(
            height: 60,
            width: 60,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(360),
              child: foodItem.icon,
            ),
          ),
          title: Text(
            foodItem.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  foodItem.explanation,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    if (foodItem.discount) ...[
                      Text(
                        'Fiyat: ${foodItem.price.toStringAsFixed(2)} TL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '${discountedPrice.toStringAsFixed(0)} TL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.red,
                        ),
                      ),
                    ] else ...[
                      Text(
                        'Fiyat: ${foodItem.price.toStringAsFixed(2)} TL',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
          trailing: ElevatedButton(
            onPressed: () {
              addToCart();
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10),
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              minimumSize: Size(36, 36),
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
