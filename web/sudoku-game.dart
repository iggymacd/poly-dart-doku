import 'package:polymer/polymer.dart';

/**
 * A Polymer sudoku game element.
 */
@CustomTag('sudoku-game')
class SudokuGame extends PolymerElement {
  @published int count = 0;

  SudokuGame.created() : super.created() {
  }

  void increment() {
    count++;
  }
}

