import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../modules.dart';

class PuzzleViewModel extends StateNotifier<Coordinate> {
  PuzzleViewModel()
      : super(Coordinate(
          puzzleItems: <PuzzleItem>[],
          emptyArea: EmptyArea(x: 3, y: 3),
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

    final Coordinate newState = state.copyWith();
    state = newState;
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

      final Coordinate newState =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);

      state = newState;
    } else if (puzzleItemX - 1 == emptyAreaX && puzzleItemY == emptyAreaY) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      final Coordinate newState =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);

      state = newState;
    } else if (puzzleItemY + 1 == emptyAreaY && puzzleItemX == emptyAreaX) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      final Coordinate newState =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);

      state = newState;
    } else if (puzzleItemY - 1 == emptyAreaY && puzzleItemX == emptyAreaX) {
      final PuzzleItem puzzleItem =
          state.puzzleItems[index].copyWith(x: emptyAreaX, y: emptyAreaY);
      final EmptyArea emptyArea =
          state.emptyArea.copyWith(x: puzzleItemX, y: puzzleItemY);
      final List<PuzzleItem> statePuzzleItems = state.puzzleItems;
      statePuzzleItems[index] = puzzleItem;

      final Coordinate newState =
          state.copyWith(emptyArea: emptyArea, puzzleItems: statePuzzleItems);

      state = newState;
    } else {
      return;
    }
  }
}
