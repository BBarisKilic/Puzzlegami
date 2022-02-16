import 'package:freezed_annotation/freezed_annotation.dart';

part 'empty_area.freezed.dart';

@freezed
class EmptyArea with _$EmptyArea {
  const factory EmptyArea({required int x, required int y}) = _EmptyArea;
}
