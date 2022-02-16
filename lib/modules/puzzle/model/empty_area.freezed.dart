// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'empty_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EmptyAreaTearOff {
  const _$EmptyAreaTearOff();

  _EmptyArea call({required int x, required int y}) {
    return _EmptyArea(
      x: x,
      y: y,
    );
  }
}

/// @nodoc
const $EmptyArea = _$EmptyAreaTearOff();

/// @nodoc
mixin _$EmptyArea {
  int get x => throw _privateConstructorUsedError;
  int get y => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmptyAreaCopyWith<EmptyArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyAreaCopyWith<$Res> {
  factory $EmptyAreaCopyWith(EmptyArea value, $Res Function(EmptyArea) then) =
      _$EmptyAreaCopyWithImpl<$Res>;
  $Res call({int x, int y});
}

/// @nodoc
class _$EmptyAreaCopyWithImpl<$Res> implements $EmptyAreaCopyWith<$Res> {
  _$EmptyAreaCopyWithImpl(this._value, this._then);

  final EmptyArea _value;
  // ignore: unused_field
  final $Res Function(EmptyArea) _then;

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
abstract class _$EmptyAreaCopyWith<$Res> implements $EmptyAreaCopyWith<$Res> {
  factory _$EmptyAreaCopyWith(
          _EmptyArea value, $Res Function(_EmptyArea) then) =
      __$EmptyAreaCopyWithImpl<$Res>;
  @override
  $Res call({int x, int y});
}

/// @nodoc
class __$EmptyAreaCopyWithImpl<$Res> extends _$EmptyAreaCopyWithImpl<$Res>
    implements _$EmptyAreaCopyWith<$Res> {
  __$EmptyAreaCopyWithImpl(_EmptyArea _value, $Res Function(_EmptyArea) _then)
      : super(_value, (v) => _then(v as _EmptyArea));

  @override
  _EmptyArea get _value => super._value as _EmptyArea;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_EmptyArea(
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

class _$_EmptyArea implements _EmptyArea {
  const _$_EmptyArea({required this.x, required this.y});

  @override
  final int x;
  @override
  final int y;

  @override
  String toString() {
    return 'EmptyArea(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmptyArea &&
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
  _$EmptyAreaCopyWith<_EmptyArea> get copyWith =>
      __$EmptyAreaCopyWithImpl<_EmptyArea>(this, _$identity);
}

abstract class _EmptyArea implements EmptyArea {
  const factory _EmptyArea({required int x, required int y}) = _$_EmptyArea;

  @override
  int get x;
  @override
  int get y;
  @override
  @JsonKey(ignore: true)
  _$EmptyAreaCopyWith<_EmptyArea> get copyWith =>
      throw _privateConstructorUsedError;
}
