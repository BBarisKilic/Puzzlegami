import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../modules.dart';
import '../../../widgets/widgets.dart';

final _puzzleViewModel = StateNotifierProvider<PuzzleViewModel, Coordinate>(
    (ref) => PuzzleViewModel());

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
          child: Consumer(
            builder: (_, ref, ___) => Stack(
              clipBehavior: Clip.none,
              children: _buildPuzzleItems(ref),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildPuzzleItems(WidgetRef ref) {
    final List<Widget> puzzleItems = <Widget>[];
    final List<PuzzleItem> puzzleItemDetails =
        ref.watch(_puzzleViewModel).puzzleItems;

    for (int i = 0; i < puzzleItemDetails.length; i++) {
      puzzleItems.add(PuzzleGridItem(
          puzzleItemDetail: puzzleItemDetails[i],
          onTap: () {
            ref.read(_puzzleViewModel.notifier).updatePuzzleItemCoordinate(i);
          }));
    }

    return puzzleItems;
  }
}
