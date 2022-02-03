import 'package:flutter/material.dart';
import 'package:puzzlegami/modules/puzzle/model/puzzle_item_detail.dart';

class PuzzleViewModel extends ChangeNotifier {
  late final List<PuzzleItemDetail> _puzzleItemDetails;
  late final Map<String, int> _emptyCoordinate;

  PuzzleViewModel() {
    _puzzleItemDetails = <PuzzleItemDetail>[];
    _emptyCoordinate = {'x': 3, 'y': 3};
    setPuzzleDetails();
  }

  List<PuzzleItemDetail> get getPuzzleItemDetails => _puzzleItemDetails;

  void redraw() {
    notifyListeners();
  }

  void setPuzzleDetails() {
    for (int x = 0; x < 4; x++) {
      for (int y = 0; y < 4; y++) {
        _puzzleItemDetails.add(PuzzleItemDetail(x, y));
      }
    }
    _puzzleItemDetails.removeLast();
  }

  void updatePuzzleItemCoordinate(int index) {
    final int x = _puzzleItemDetails[index].x;
    final int y = _puzzleItemDetails[index].y;

    if (x + 1 == _emptyCoordinate['x'] && y == _emptyCoordinate['y']) {
      _puzzleItemDetails[index].x = _emptyCoordinate['x']!;
      _puzzleItemDetails[index].y = _emptyCoordinate['y']!;
    }
  }
}
