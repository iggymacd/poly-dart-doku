library todomvc.web.elements.td_item;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'sk-model.dart';

@CustomTag('sk-game-item')
class SudokuGameItem extends LIElement with Polymer, Observable {
  @published bool editing = false;
  @published SudokuGame item;

  factory SudokuGameItem() => new Element.tag('li', 'sk-game-item');
  SudokuGameItem.created() : super.created() { polymerCreated(); }

  editAction() {
    editing = true;
    // schedule focus for the end of microtask, when the input will be visible
    async((_) => $['edit'].focus());
  }

  commitAction() {
    if (editing) {
      editing = false;
      item.title = item.title.trim();
      if (item.title == '') {
        destroyAction();
      }
      fire('sk-item-changed');
    }
  }

  cancelAction() {
    editing = false;
  }

  itemChangeAction() {
    // TODO(jmesserly): asyncFire is needed because "click" fires before
    // "item.checked" is updated on Firefox. Need to check Polymer.js.
    asyncFire('sk-item-changed');
  }

  destroyAction() {
    fire('sk-destroy-item', detail: item);
  }
}
