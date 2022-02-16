import 'package:freezed_annotation/freezed_annotation.dart';

part 'coordinate.freezed.dart';

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

@freezed
class Coordinate with _$Coordinate {
  const factory Coordinate({
    required List<PuzzleItem> puzzleItems,
    required EmptyArea emptyArea,
  }) = _Coordinate;
}
