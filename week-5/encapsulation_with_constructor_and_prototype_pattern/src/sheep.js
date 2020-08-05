'use strict';

class Sheep {
  constructor(name) {
    this._name = name;
  }
  sayName() {
    return 'My name is ' + this._name +'.';
  }
}