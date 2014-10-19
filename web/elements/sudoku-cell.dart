import 'package:polymer/polymer.dart';
import 'dart:html';

/**
 * A Polymer sudoku cell element.
 */
@CustomTag('sudoku-cell')
class SudokuCell extends TableCellElement with Polymer, Observable{
  @published int count = 0;
  @published bool selectingCandidates = false;
  @published bool clearingValue = false;
  @published String cellValue = '';

  SudokuCell.created() : super.created() {
    polymerCreated();
  }

  void increment() {
    count++;
  }
  
  void showClearCellButtonAction(){
    
    //clearingValue = true;
  }
  void removeClearCellButtonAction(){
    
    clearingValue = false;
  }
  
  void showCandidateSelectionAction(){
    selectingCandidates = true;
  }
}

