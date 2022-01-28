import 'dart:async';

import 'package:flutter/material.dart';
import 'package:game_of_life/cubit/game_of_life_cubit.dart';
import 'package:game_of_life/pages/gol_grid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GOLPage extends StatelessWidget {
  const GOLPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<GameOfLifeCubit>().initializeGrid(
          height: 600,
          width: 1200,
        );
    Timer.periodic(const Duration(milliseconds: 300), (timer) {
      context.read<GameOfLifeCubit>().computeNextGeneration();
    });
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: GOLGrid(),
        ),
      ),
    );
  }
}
