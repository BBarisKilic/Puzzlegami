import 'package:flutter/material.dart';
import 'puzzle_large_view.dart';
import 'puzzle_medium_view.dart';
import 'puzzle_small_view.dart';
import '../../../utils/utils.dart';

class PuzzleView extends StatelessWidget {
  const PuzzleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      small: (context, child) => const PuzzleSmallView(),
      medium: (context, child) => const PuzzleMediumView(),
      large: (context, child) => const PuzzleLargeView(),
    );
  }
}
