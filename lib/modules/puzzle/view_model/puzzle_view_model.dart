import 'package:flutter/material.dart';
import 'package:puzzlegami/modules/puzzle/model/empty_area.dart';
import 'package:puzzlegami/modules/puzzle/model/puzzle_item_detail.dart';

class PuzzleViewModel extends ChangeNotifier {
  late final List<PuzzleItemDetail> _puzzleItemDetails;
  late final EmptyArea _emptyArea;

  PuzzleViewModel() {
    _puzzleItemDetails = <PuzzleItemDetail>[];
    _emptyArea = EmptyArea(3, 3);
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
    final int coordinateX = _puzzleItemDetails[index].x;
    final int coordinateY = _puzzleItemDetails[index].y;

    if (coordinateX + 1 == _emptyArea.x && coordinateY == _emptyArea.y) {
      _puzzleItemDetails[index].x = _emptyArea.x;
      _puzzleItemDetails[index].y = _emptyArea.y;
      _emptyArea.x = coordinateX;
      _emptyArea.y = coordinateY;
    } else if (coordinateX - 1 == _emptyArea.x && coordinateY == _emptyArea.y) {
      _puzzleItemDetails[index].x = _emptyArea.x;
      _puzzleItemDetails[index].y = _emptyArea.y;
      _emptyArea.x = coordinateX;
      _emptyArea.y = coordinateY;
    } else if (coordinateY + 1 == _emptyArea.y && coordinateX == _emptyArea.x) {
      _puzzleItemDetails[index].x = _emptyArea.x;
      _puzzleItemDetails[index].y = _emptyArea.y;
      _emptyArea.x = coordinateX;
      _emptyArea.y = coordinateY;
    } else if (coordinateY - 1 == _emptyArea.y && coordinateX == _emptyArea.x) {
      _puzzleItemDetails[index].x = _emptyArea.x;
      _puzzleItemDetails[index].y = _emptyArea.y;
      _emptyArea.x = coordinateX;
      _emptyArea.y = coordinateY;
    } else {
      return;
    }
  }
}
