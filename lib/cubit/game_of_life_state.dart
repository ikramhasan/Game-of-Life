part of 'game_of_life_cubit.dart';

@freezed
class GameOfLifeState with _$GameOfLifeState {
  const factory GameOfLifeState({
    required List<List<int>> oldGeneration,
    required List<List<int>> newGeneration,
    required int gridSize,
    required int row,
    required int col,
  }) = _GameOfLifeState;

  factory GameOfLifeState.initial() => const GameOfLifeState(
        oldGeneration: [],
        newGeneration: [],
        gridSize: 0,
        row: 0,
        col: 0,
      );
}
