import 'package:flutter/material.dart';

class GenderInput extends StatelessWidget {
  final String gender;
  final String text;

  const GenderInput({
    super.key,
    required this.gender,
    required this.text,
  });

  IconData _getIconData(String sex) {
    switch (sex.toLowerCase()) {
      case 'male':
        return Icons.male;
      case 'female':
        return Icons.female;
      default:
        return Icons.help;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          _getIconData(gender),
          size: 75,
          color: Colors.white,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
