import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_of_life/app.dart';
import 'package:game_of_life/app_bloc_observer.dart';

void main() {
  BlocOverrides.runZoned(
    () {
      runApp(const App());
    },
    blocObserver: AppBlocObserver(),
  );
}
