import 'package:flutter/material.dart';
import 'package:puzzlegami/modules/modules.dart';
import 'package:puzzlegami/modules/puzzle/model/puzzle_item_detail.dart';

class PuzzleItem extends StatelessWidget {
  final PuzzleItemDetail puzzleItemDetail;
  final Function onTap;

  const PuzzleItem({
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
