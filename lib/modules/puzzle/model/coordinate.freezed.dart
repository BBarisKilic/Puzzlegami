// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coordinate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CoordinateTearOff {
  const _$CoordinateTearOff();

  _Coordinate call(
      {required List<PuzzleItem> puzzleItems, required EmptyArea emptyArea}) {
    return _Coordinate(
      puzzleItems: puzzleItems,
      emptyArea: emptyArea,
    );
  }
}

/// @nodoc
const $Coordinate = _$CoordinateTearOff();

/// @nodoc
mixin _$Coordinate {
  List<PuzzleItem> get puzzleItems => throw _privateConstructorUsedError;
  EmptyArea get emptyArea => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoordinateCopyWith<Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordinateCopyWith<$Res> {
  factory $CoordinateCopyWith(
          Coordinate value, $Res Function(Coordinate) then) =
      _$CoordinateCopyWithImpl<$Res>;
  $Res call({List<PuzzleItem> puzzleItems, EmptyArea emptyArea});
}

/// @nodoc
class _$CoordinateCopyWithImpl<$Res> implements $CoordinateCopyWith<$Res> {
  _$CoordinateCopyWithImpl(this._value, this._then);

  final Coordinate _value;
  // ignore: unused_field
  final $Res Function(Coordinate) _then;

  @override
  $Res call({
    Object? puzzleItems = freezed,
    Object? emptyArea = freezed,
  }) {
    return _then(_value.copyWith(
      puzzleItems: puzzleItems == freezed
          ? _value.puzzleItems
          : puzzleItems // ignore: cast_nullable_to_non_nullable
              as List<PuzzleItem>,
      emptyArea: emptyArea == freezed
          ? _value.emptyArea
          : emptyArea // ignore: cast_nullable_to_non_nullable
              as EmptyArea,
    ));
  }
}

/// @nodoc
abstract class _$CoordinateCopyWith<$Res> implements $CoordinateCopyWith<$Res> {
  factory _$CoordinateCopyWith(
          _Coordinate value, $Res Function(_Coordinate) then) =
      __$CoordinateCopyWithImpl<$Res>;
  @override
  $Res call({List<PuzzleItem> puzzleItems, EmptyArea emptyArea});
}

/// @nodoc
class __$CoordinateCopyWithImpl<$Res> extends _$CoordinateCopyWithImpl<$Res>
    implements _$CoordinateCopyWith<$Res> {
  __$CoordinateCopyWithImpl(
      _Coordinate _value, $Res Function(_Coordinate) _then)
      : super(_value, (v) => _then(v as _Coordinate));

  @override
  _Coordinate get _value => super._value as _Coordinate;

  @override
  $Res call({
    Object? puzzleItems = freezed,
    Object? emptyArea = freezed,
  }) {
    return _then(_Coordinate(
      puzzleItems: puzzleItems == freezed
          ? _value.puzzleItems
          : puzzleItems // ignore: cast_nullable_to_non_nullable
              as List<PuzzleItem>,
      emptyArea: emptyArea == freezed
          ? _value.emptyArea
          : emptyArea // ignore: cast_nullable_to_non_nullable
              as EmptyArea,
    ));
  }
}

/// @nodoc

class _$_Coordinate implements _Coordinate {
  const _$_Coordinate({required this.puzzleItems, required this.emptyArea});

  @override
  final List<PuzzleItem> puzzleItems;
  @override
  final EmptyArea emptyArea;

  @override
  String toString() {
    return 'Coordinate(puzzleItems: $puzzleItems, emptyArea: $emptyArea)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coordinate &&
            const DeepCollectionEquality()
                .equals(other.puzzleItems, puzzleItems) &&
            const DeepCollectionEquality().equals(other.emptyArea, emptyArea));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(puzzleItems),
      const DeepCollectionEquality().hash(emptyArea));

  @JsonKey(ignore: true)
  @override
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      __$CoordinateCopyWithImpl<_Coordinate>(this, _$identity);
}

abstract class _Coordinate implements Coordinate {
  const factory _Coordinate(
      {required List<PuzzleItem> puzzleItems,
      required EmptyArea emptyArea}) = _$_Coordinate;

  @override
  List<PuzzleItem> get puzzleItems;
  @override
  EmptyArea get emptyArea;
  @override
  @JsonKey(ignore: true)
  _$CoordinateCopyWith<_Coordinate> get copyWith =>
      throw _privateConstructorUsedError;
}
