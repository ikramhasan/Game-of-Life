import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:game_of_life/utils/logger.dart';

part 'game_of_life_state.dart';
part 'game_of_life_cubit.freezed.dart';

class GameOfLifeCubit extends Cubit<GameOfLifeState> {
  GameOfLifeCubit() : super(GameOfLifeState.initial());

  late double canvasHeight;
  late double canvasWidth;
  late int resolution;

  void initializeGrid({
    double? height,
    double? width,
    int? resolution,
  }) {
    canvasWidth = width ?? 600;
    canvasHeight = height ?? 400;
    resolution = resolution ?? 20;

    int row = canvasHeight ~/ resolution;
    int col = canvasWidth ~/ resolution;

    emit(
      state.copyWith(
        row: row,
        col: col,
      ),
    );

    final grid = make2DGrid();

    emit(
      state.copyWith(
        newGeneration: grid,
        oldGeneration: grid,
        gridSize: row * col,
      ),
    );
  }

  void computeNextGeneration() {
    final next = make2DGrid();

    for (int i = 0; i < state.col; i++) {
      for (int j = 0; j < state.row; j++) {
        int gridTileState = state.oldGeneration[i][j];

        // Count live neighbors
        int neighbors = _countNeighbors(state.oldGeneration, i, j);

        // Rule 1:
        if (gridTileState == 0 && neighbors == 3) {
          next[i][j] = 1;
        }
        // Rule 2
        else if (gridTileState == 1 && (neighbors < 2 || neighbors > 3)) {
          next[i][j] = 0;
        } else {
          next[i][j] = gridTileState;
        }
      }
    }

    emit(
      state.copyWith(
        oldGeneration: next,
        newGeneration: next,
      ),
    );
  }

  int _countNeighbors(List<List<int>> grid, int x, int y) {
    int sum = 0;
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        int col = (x + i + state.col) % state.col;
        int row = (y + j + state.row) % state.row;

        sum += state.oldGeneration[col][row];
      }
    }

    sum -= state.oldGeneration[x][y];
    return sum;
  }

  List<List<int>> make2DGrid() {
    List<List<int>> grid = List.generate(
      state.col,
      (i) => List.filled(state.row, 0),
      growable: false,
    );

    for (int i = 0; i < state.col; i++) {
      for (int j = 0; j < state.row; j++) {
        grid[i][j] = Random().nextInt(2);
      }
    }

    return grid;
  }
}
