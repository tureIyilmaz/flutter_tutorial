import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  final int cartItemCount;
  final VoidCallback onPressed;

  const CartButton({
    super.key,
    required this.cartItemCount,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FloatingActionButton(
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          onPressed: onPressed,
          child: const Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
        ),
        if (cartItemCount != 0)
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              constraints: const BoxConstraints(
                minWidth: 20,
                minHeight: 20,
              ),
              child: Text(
                '$cartItemCount',
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    );
  }
}
