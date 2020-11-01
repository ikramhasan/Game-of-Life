import 'dart:math';

import 'package:flutter/material.dart';
import 'package:game_of_life/gol_painter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Random random = new Random();
  make2DArray(rows, cols) {
    var arr = new List(cols);
    for (int i = 0; i < arr.length; i++) {
      arr[i] = new List(rows);
    }
    return arr;
  }

  var grid;
  var cols = 10;
  var rows = 10;
  double resolution = 5;

  @override
  void initState() {
    grid = make2DArray(cols, rows);

    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j] = random.nextInt(2);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CustomPaint(
          painter: GOLPainter(grid),
          //size: Size(10, 10),
        ),
      ),
      //Center(
      //  child:
      //GridView.count(
      //  crossAxisCount: grid.length,
      //  crossAxisSpacing: 1,
      //  mainAxisSpacing: 1,
      //  children: List.generate(
      //    grid.length,
      //    (index) {
      //      for (int i = 0; i < rows; i++) {
      //        print(grid[index][i].toString());
      //        if (grid[index][i] == 1) {
      //          return Container(
      //            height: resolution,
      //            width: resolution,
      //            color: Colors.white,
      //          );
      //        } else if (grid[index][i] == 0) {
      //          return Container(
      //            height: resolution,
      //            width: resolution,
      //            color: Colors.black,
      //          );
      //        }
      //      }
      //    },
      //  ),
      //),

      //),
      floatingActionButton: FloatingActionButton(
        child: Text('Test'),
        onPressed: () {
          print(grid);
        },
      ),
    );
  }
}
