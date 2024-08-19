import 'package:flutter/material.dart';

import 'constant.dart';

class SliderContainer extends StatefulWidget {
  final String mainText;
  final double minimum;
  final double maximum;

  const SliderContainer({
    super.key,
    required this.mainText,
    required this.minimum,
    required this.maximum,
  });

  @override
  _SliderContainerState createState() => _SliderContainerState();
}

class _SliderContainerState extends State<SliderContainer> {
  double smokedCigaretteValue = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          widget.mainText,
          style: kTextStyle,
        ),
        Text(
          '${smokedCigaretteValue.toInt()}',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Slider(
          min: widget.minimum,
          max: widget.maximum,
          divisions: (widget.maximum - widget.minimum).toInt(),
          value: smokedCigaretteValue,
          onChanged: (value) {
            setState(() {
              smokedCigaretteValue = value;
            });
          },
        ),
      ],
    );
  }
}
