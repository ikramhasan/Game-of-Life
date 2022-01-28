// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'game_of_life_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GameOfLifeStateTearOff {
  const _$GameOfLifeStateTearOff();

  _GameOfLifeState call(
      {required List<List<int>> oldGeneration,
      required List<List<int>> newGeneration,
      required int gridSize,
      required int row,
      required int col}) {
    return _GameOfLifeState(
      oldGeneration: oldGeneration,
      newGeneration: newGeneration,
      gridSize: gridSize,
      row: row,
      col: col,
    );
  }
}

/// @nodoc
const $GameOfLifeState = _$GameOfLifeStateTearOff();

/// @nodoc
mixin _$GameOfLifeState {
  List<List<int>> get oldGeneration => throw _privateConstructorUsedError;
  List<List<int>> get newGeneration => throw _privateConstructorUsedError;
  int get gridSize => throw _privateConstructorUsedError;
  int get row => throw _privateConstructorUsedError;
  int get col => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GameOfLifeStateCopyWith<GameOfLifeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameOfLifeStateCopyWith<$Res> {
  factory $GameOfLifeStateCopyWith(
          GameOfLifeState value, $Res Function(GameOfLifeState) then) =
      _$GameOfLifeStateCopyWithImpl<$Res>;
  $Res call(
      {List<List<int>> oldGeneration,
      List<List<int>> newGeneration,
      int gridSize,
      int row,
      int col});
}

/// @nodoc
class _$GameOfLifeStateCopyWithImpl<$Res>
    implements $GameOfLifeStateCopyWith<$Res> {
  _$GameOfLifeStateCopyWithImpl(this._value, this._then);

  final GameOfLifeState _value;
  // ignore: unused_field
  final $Res Function(GameOfLifeState) _then;

  @override
  $Res call({
    Object? oldGeneration = freezed,
    Object? newGeneration = freezed,
    Object? gridSize = freezed,
    Object? row = freezed,
    Object? col = freezed,
  }) {
    return _then(_value.copyWith(
      oldGeneration: oldGeneration == freezed
          ? _value.oldGeneration
          : oldGeneration // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      newGeneration: newGeneration == freezed
          ? _value.newGeneration
          : newGeneration // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      gridSize: gridSize == freezed
          ? _value.gridSize
          : gridSize // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: col == freezed
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GameOfLifeStateCopyWith<$Res>
    implements $GameOfLifeStateCopyWith<$Res> {
  factory _$GameOfLifeStateCopyWith(
          _GameOfLifeState value, $Res Function(_GameOfLifeState) then) =
      __$GameOfLifeStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<List<int>> oldGeneration,
      List<List<int>> newGeneration,
      int gridSize,
      int row,
      int col});
}

/// @nodoc
class __$GameOfLifeStateCopyWithImpl<$Res>
    extends _$GameOfLifeStateCopyWithImpl<$Res>
    implements _$GameOfLifeStateCopyWith<$Res> {
  __$GameOfLifeStateCopyWithImpl(
      _GameOfLifeState _value, $Res Function(_GameOfLifeState) _then)
      : super(_value, (v) => _then(v as _GameOfLifeState));

  @override
  _GameOfLifeState get _value => super._value as _GameOfLifeState;

  @override
  $Res call({
    Object? oldGeneration = freezed,
    Object? newGeneration = freezed,
    Object? gridSize = freezed,
    Object? row = freezed,
    Object? col = freezed,
  }) {
    return _then(_GameOfLifeState(
      oldGeneration: oldGeneration == freezed
          ? _value.oldGeneration
          : oldGeneration // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      newGeneration: newGeneration == freezed
          ? _value.newGeneration
          : newGeneration // ignore: cast_nullable_to_non_nullable
              as List<List<int>>,
      gridSize: gridSize == freezed
          ? _value.gridSize
          : gridSize // ignore: cast_nullable_to_non_nullable
              as int,
      row: row == freezed
          ? _value.row
          : row // ignore: cast_nullable_to_non_nullable
              as int,
      col: col == freezed
          ? _value.col
          : col // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GameOfLifeState implements _GameOfLifeState {
  const _$_GameOfLifeState(
      {required this.oldGeneration,
      required this.newGeneration,
      required this.gridSize,
      required this.row,
      required this.col});

  @override
  final List<List<int>> oldGeneration;
  @override
  final List<List<int>> newGeneration;
  @override
  final int gridSize;
  @override
  final int row;
  @override
  final int col;

  @override
  String toString() {
    return 'GameOfLifeState(oldGeneration: $oldGeneration, newGeneration: $newGeneration, gridSize: $gridSize, row: $row, col: $col)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GameOfLifeState &&
            const DeepCollectionEquality()
                .equals(other.oldGeneration, oldGeneration) &&
            const DeepCollectionEquality()
                .equals(other.newGeneration, newGeneration) &&
            const DeepCollectionEquality().equals(other.gridSize, gridSize) &&
            const DeepCollectionEquality().equals(other.row, row) &&
            const DeepCollectionEquality().equals(other.col, col));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldGeneration),
      const DeepCollectionEquality().hash(newGeneration),
      const DeepCollectionEquality().hash(gridSize),
      const DeepCollectionEquality().hash(row),
      const DeepCollectionEquality().hash(col));

  @JsonKey(ignore: true)
  @override
  _$GameOfLifeStateCopyWith<_GameOfLifeState> get copyWith =>
      __$GameOfLifeStateCopyWithImpl<_GameOfLifeState>(this, _$identity);
}

abstract class _GameOfLifeState implements GameOfLifeState {
  const factory _GameOfLifeState(
      {required List<List<int>> oldGeneration,
      required List<List<int>> newGeneration,
      required int gridSize,
      required int row,
      required int col}) = _$_GameOfLifeState;

  @override
  List<List<int>> get oldGeneration;
  @override
  List<List<int>> get newGeneration;
  @override
  int get gridSize;
  @override
  int get row;
  @override
  int get col;
  @override
  @JsonKey(ignore: true)
  _$GameOfLifeStateCopyWith<_GameOfLifeState> get copyWith =>
      throw _privateConstructorUsedError;
}
