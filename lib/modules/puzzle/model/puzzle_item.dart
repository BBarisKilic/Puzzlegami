import 'package:freezed_annotation/freezed_annotation.dart';

part 'puzzle_item.freezed.dart';

@freezed
class PuzzleItem with _$PuzzleItem {
  const factory PuzzleItem({required int x, required int y}) = _PuzzleItem;
}
