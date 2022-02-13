class EmptyArea {
  int x;
  int y;

  EmptyArea({required this.x, required this.y});
}

class PuzzleItem {
  int x;
  int y;

  PuzzleItem({required this.x, required this.y});
}

class Coordinate {
  final List<PuzzleItem> puzzleItems;
  final EmptyArea emptyArea;

  const Coordinate({required this.puzzleItems, required this.emptyArea});

  Coordinate copy({List<PuzzleItem>? puzzleItems, EmptyArea? emptyArea}) =>
      Coordinate(
          puzzleItems: puzzleItems ?? this.puzzleItems,
          emptyArea: emptyArea ?? this.emptyArea);
}
