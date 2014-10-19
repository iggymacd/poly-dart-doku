library todomvc.web.elements.td_input;

import 'dart:html';
import 'package:polymer/polymer.dart';

@CustomTag('sk-input')
class SudokuInput extends InputElement with Polymer, Observable {
  factory SudokuInput() => new Element.tag('input', 'sk-input');
  SudokuInput.created() : super.created() {
    polymerCreated();
  }

  keypressAction(e) {
    // Listen for enter on keypress but esc on keyup, because
    // IE doesn't fire keyup for enter.
    if (e.keyCode == KeyCode.ENTER) {
      e.preventDefault();
      fire('sk-input-commit');
    }
  }

  keyupAction(e) {
    if (e.keyCode == KeyCode.ESC) {
      fire('sk-input-cancel');
    }
  }
}
