import 'package:polymer/polymer.dart';

/**
 * A Polymer sudoku cell element.
 */
@CustomTag('sudoku-cell')
class SudokuCell extends PolymerElement {
  @published int count = 0;

  SudokuCell.created() : super.created() {
  }

  void increment() {
    count++;
  }
}

