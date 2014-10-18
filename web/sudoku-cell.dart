import 'package:polymer/polymer.dart';
import 'dart:html';

/**
 * A Polymer sudoku cell element.
 */
@CustomTag('sudoku-cell')
class SudokuCell extends TableCellElement with Polymer, Observable{
  @published int count = 0;

  SudokuCell.created() : super.created() {
    polymerCreated();
  }

  void increment() {
    count++;
  }
  
}

