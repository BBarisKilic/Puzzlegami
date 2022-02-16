import 'package:freezed_annotation/freezed_annotation.dart';

import 'empty_area.dart';
import 'puzzle_item.dart';

part 'coordinate.freezed.dart';

@freezed
class Coordinate with _$Coordinate {
  const factory Coordinate({
    required List<PuzzleItem> puzzleItems,
    required EmptyArea emptyArea,
  }) = _Coordinate;
}
