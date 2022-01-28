import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_life/cubit/game_of_life_cubit.dart';
import 'package:game_of_life/pages/gol_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GameOfLifeCubit>(
      create: (context) => GameOfLifeCubit(),
      child: MaterialApp(
        title: 'Game of Life',
        theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.blue,
        ),
        home: const GOLPage(),
      ),
    );
  }
}
