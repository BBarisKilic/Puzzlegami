import 'package:flutter/material.dart';
import 'package:puzzlegami/modules/puzzle/view/puzzle_large_view.dart';
import 'package:puzzlegami/modules/puzzle/view/puzzle_medium_view.dart';
import 'package:puzzlegami/modules/puzzle/view/puzzle_small_view.dart';
import 'package:puzzlegami/utils/utils.dart';

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
