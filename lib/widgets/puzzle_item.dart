import 'package:flutter/material.dart';

class PuzzleItem extends StatelessWidget {
  const PuzzleItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      child: SizedBox(
        height: 75,
        width: 75,
        child: Center(
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
