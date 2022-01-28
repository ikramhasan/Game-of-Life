import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_life/cubit/game_of_life_cubit.dart';

class GOLGrid extends StatelessWidget {
  const GOLGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameOfLifeCubit, GameOfLifeState>(
      buildWhen: (previous, current) =>
          previous.oldGeneration != current.oldGeneration,
      builder: (context, state) {
        if (state.gridSize != 0) {
          return SizedBox(
            height: context.read<GameOfLifeCubit>().canvasHeight,
            width: context.read<GameOfLifeCubit>().canvasWidth,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.gridSize,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: state.oldGeneration.length,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                int x = (index / state.oldGeneration.length).floor();
                int y = (index % state.oldGeneration.length);
                return Container(
                  decoration: BoxDecoration(
                    color: state.oldGeneration[y][x] == 0
                        ? Colors.black
                        : Colors.green,
                    border: Border.all(
                      color: Colors.black,
                    ),
                  ),

                  // child: Center(
                  //   child: Text(
                  //     state.oldGeneration[y][x].toString(),
                  //     style: TextStyle(
                  //       color: state.oldGeneration[y][x] == 0
                  //           ? Colors.white
                  //           : Colors.black,
                  //     ),
                  //   ),
                  // ),
                );
              },
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
