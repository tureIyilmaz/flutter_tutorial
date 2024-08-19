import 'package:flutter/material.dart';

import 'constant.dart';

class OutlineContainer extends StatefulWidget {
  final String text;
  int number;

  OutlineContainer({
    Key? key,
    required this.text,
    required this.number,
  }) : super(key: key);

  @override
  State<OutlineContainer> createState() => _OutlineContainerState();
}

class _OutlineContainerState extends State<OutlineContainer> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            widget.text,
            style: kTextStyle,
          ),
        ),
        RotatedBox(
          quarterTurns: -1,
          child: Text(
            '${widget.number}',
            style: kNumberStyle,
          ),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    widget.number++;
                  });
                },
                child: kAdd,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    widget.number--;
                  });
                },
                child: kRemove,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
