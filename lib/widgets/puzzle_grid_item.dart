import 'package:flutter/material.dart';
import '../modules/modules.dart';

class PuzzleGridItem extends StatelessWidget {
  final PuzzleItem puzzleItemDetail;
  final Function onTap;

  const PuzzleGridItem({
    Key? key,
    required this.puzzleItemDetail,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: puzzleItemDetail.x * 75,
      top: puzzleItemDetail.y * 75,
      child: SizedBox(
        height: 75,
        width: 75,
        child: Center(
          child: GestureDetector(
            onTap: () => onTap(),
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
      ),
    );
  }
}
