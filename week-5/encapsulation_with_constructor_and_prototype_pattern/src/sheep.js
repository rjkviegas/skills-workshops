'use strict';

class Sheep {
  constructor(name) {
    this._name = name;
  }
  sayName() {
    return this._name;
  }
  enter(pen) {
    pen.add(this);
  }
}