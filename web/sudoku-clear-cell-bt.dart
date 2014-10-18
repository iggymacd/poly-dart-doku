import 'package:polymer/polymer.dart';
//import 'dart:html';

/**
 * A Polymer sudoku clear cell button element.
 */
@CustomTag('sudoku-clear-cell-bt')
class SudokuClearCellButton extends PolymerElement{
  @published int count = 0;

  SudokuClearCellButton.created() : super.created() {
    
  }

  void increment() {
    count++;
  }
  
}

