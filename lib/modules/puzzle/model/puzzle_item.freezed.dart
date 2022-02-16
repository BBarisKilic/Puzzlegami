// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'puzzle_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PuzzleItemTearOff {
  const _$PuzzleItemTearOff();

  _PuzzleItem call({required int x, required int y}) {
    return _PuzzleItem(
      x: x,
      y: y,
    );
  }
}

/// @nodoc
const $PuzzleItem = _$PuzzleItemTearOff();

/// @nodoc
mixin _$PuzzleItem {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PuzzleItemCopyWith<PuzzleItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PuzzleItemCopyWith<$Res> {
  factory $PuzzleItemCopyWith(
          PuzzleItem value, $Res Function(PuzzleItem) then) =
      _$PuzzleItemCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$PuzzleItemCopyWithImpl<$Res> implements $PuzzleItemCopyWith<$Res> {
  _$PuzzleItemCopyWithImpl(this._value, this._then);

  final PuzzleItem _value;
  // ignore: unused_field
  final $Res Function(PuzzleItem) _then;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PuzzleItemCopyWith<$Res> implements $PuzzleItemCopyWith<$Res> {
  factory _$PuzzleItemCopyWith(
          _PuzzleItem value, $Res Function(_PuzzleItem) then) =
      __$PuzzleItemCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$PuzzleItemCopyWithImpl<$Res> extends _$PuzzleItemCopyWithImpl<$Res>
    implements _$PuzzleItemCopyWith<$Res> {
  __$PuzzleItemCopyWithImpl(
      _PuzzleItem _value, $Res Function(_PuzzleItem) _then)
      : super(_value, (v) => _then(v as _PuzzleItem));

  @override
  _PuzzleItem get _value => super._value as _PuzzleItem;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_PuzzleItem(
      x: x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as int,
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_PuzzleItem implements _PuzzleItem {
  const _$_PuzzleItem({required this.x, required this.y});

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'PuzzleItem(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PuzzleItem &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$PuzzleItemCopyWith<_PuzzleItem> get copyWith =>
      __$PuzzleItemCopyWithImpl<_PuzzleItem>(this, _$identity);
}

abstract class _PuzzleItem implements PuzzleItem {
  const factory _PuzzleItem({required int x, required int y}) = _$_PuzzleItem;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$PuzzleItemCopyWith<_PuzzleItem> get copyWith =>
      throw _privateConstructorUsedError;
}
