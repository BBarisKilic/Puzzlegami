import 'package:flutter/material.dart';
import 'package:puzzlegami/modules/modules.dart';
import 'package:puzzlegami/modules/puzzle/model/puzzle_item_detail.dart';
import 'package:puzzlegami/widgets/widgets.dart';
import 'package:provider/provider.dart';

class PuzzleLargeView extends StatelessWidget {
  const PuzzleLargeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 320,
          width: 320,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Consumer<PuzzleViewModel>(
            builder: (_, __, ___) => Stack(
              clipBehavior: Clip.none,
              children: _buildPuzzleItems(context),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPuzzleItems(BuildContext context) {
    final List<Widget> puzzleItems = <Widget>[];
    final List<PuzzleItemDetail> puzzleItemDetails =
        context.read<PuzzleViewModel>().getPuzzleItemDetails;

    for (int i = 0; i < puzzleItemDetails.length; i++) {
      puzzleItems.add(PuzzleItem(
          puzzleItemDetail: puzzleItemDetails[i],
          onTap: () {
            context.read<PuzzleViewModel>().updatePuzzleItemCoordinate(i);
            context.read<PuzzleViewModel>().redraw();
          }));
    }

    return puzzleItems;
  }
}
