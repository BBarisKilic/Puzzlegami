import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../modules.dart';

class PuzzleViewModel extends StateNotifier<Coordinate> {
  PuzzleViewModel()
      // ignore: prefer_const_constructors
      : super(Coordinate(
          puzzleItems: <PuzzleItem>[],
          emptyArea: const EmptyArea(x: 3, y: 3),
        )) {
    setPuzzleDetails();
  }

  void setPuzzleDetails() {
    for (int x = 0; x < 4; x++) {
      for (int y = 0; y < 4; y++) {
        state.puzzleItems.add(PuzzleItem(x: x, y: y));
      }
    }
    state.puzzleItems.removeLast();
  }

  void updatePuzzleItemCoordinate(int index) {
    final int puzzleItemX = state.puzzleItems[index].x;
    final int puzzleItemY = state.puzzleItems[index].y;
    final int emptyAreaX = state.emptyArea.x;
    final int emptyAreaY = state.emptyArea.y;

    if (puzzleItemX + 1 == emptyAreaX && puzzleItemY == emptyAreaY) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      state =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);
    } else if (puzzleItemX - 1 == emptyAreaX && puzzleItemY == emptyAreaY) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      state =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);
    } else if (puzzleItemY + 1 == emptyAreaY && puzzleItemX == emptyAreaX) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      state =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);
    } else if (puzzleItemY - 1 == emptyAreaY && puzzleItemX == emptyAreaX) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      state =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);
    } else {
      return;
    }
  }
}
