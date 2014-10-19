import 'package:polymer/polymer.dart';
//import 'dart:html';

/**
 * A Polymer sudoku clear cell button element.
 */
@CustomTag('sudoku-candidates-table')
class SudokuCandidatesTable extends PolymerElement{
  @published List rows = ["enabled","disabled","enabled",
                           "disabled","enabled","enabled",
                           "enabled","enabled","disabled",];
  @published List model = [
                          new RowModel()
                          ..cells.add(new CellModel('1',enabled:false))
                          ..cells.add(new CellModel('2'))
                          ..cells.add(new CellModel('3')),
      new RowModel()
      ..cells.add(new CellModel('4'))
      ..cells.add(new CellModel('5'))
      ..cells.add(new CellModel('6',enabled:false)),
      new RowModel()
      ..cells.add(new CellModel('7',enabled:false))
      ..cells.add(new CellModel('8'))
      ..cells.add(new CellModel('9'))
      ];

    SudokuCandidatesTable.created() : super.created() {
    
  }
  
}

class RowModel{
  List cells;
  
  RowModel(){
    cells = new List();
  }
}

class CellModel{
  bool enabled;
  String value;
  String get classes => enabled ? "enabled" : "disabled";
  
  CellModel(this.value,{this.enabled:true});
  
}

