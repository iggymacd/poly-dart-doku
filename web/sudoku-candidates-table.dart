import 'package:polymer/polymer.dart';
//import 'dart:html';

/**
 * A Polymer sudoku clear cell button element.
 */
@CustomTag('sudoku-candidates-table')
class SudokuCandidatesTable extends PolymerElement{
  @published int count = 0;

  SudokuCandidatesTable.created() : super.created() {
    
  }

  void increment() {
    count++;
  }
  
}

