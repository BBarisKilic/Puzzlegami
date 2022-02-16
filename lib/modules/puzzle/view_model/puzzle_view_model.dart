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

    final Coordinate newState = state.copyWith(puzzleItems: state.puzzleItems);
    state = newState;
  }

  void updatePuzzleItemCoordinate(int index) {
    final int coordinateX = state.puzzleItems[index].x;
    final int coordinateY = state.puzzleItems[index].y;

    if (coordinateX + 1 == state.emptyArea.x &&
        coordinateY == state.emptyArea.y) {
      state.puzzleItems[index].x = state.emptyArea.x;
      state.puzzleItems[index].y = state.emptyArea.y;
      state.emptyArea.x = coordinateX;
      state.emptyArea.y = coordinateY;
    } else if (coordinateX - 1 == state.emptyArea.x &&
        coordinateY == state.emptyArea.y) {
      state.puzzleItems[index].x = state.emptyArea.x;
      state.puzzleItems[index].y = state.emptyArea.y;
      state.emptyArea.x = coordinateX;
      state.emptyArea.y = coordinateY;
    } else if (coordinateY + 1 == state.emptyArea.y &&
        coordinateX == state.emptyArea.x) {
      state.puzzleItems[index].x = state.emptyArea.x;
      state.puzzleItems[index].y = state.emptyArea.y;
      state.emptyArea.x = coordinateX;
      state.emptyArea.y = coordinateY;
    } else if (coordinateY - 1 == state.emptyArea.y &&
        coordinateX == state.emptyArea.x) {
      state.puzzleItems[index].x = state.emptyArea.x;
      state.puzzleItems[index].y = state.emptyArea.y;
      state.emptyArea.x = coordinateX;
      state.emptyArea.y = coordinateY;
    } else {
      return;
    }

    final Coordinate newState = state.copyWith(
        puzzleItems: state.puzzleItems, emptyArea: state.emptyArea);
    state = newState;
  }
}
