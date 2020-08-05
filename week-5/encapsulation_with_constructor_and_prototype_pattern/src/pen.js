'use strict';

class Pen {
  constructor() {
    this._occupants = [];
  }
  list() {
    return this._occupants;
  }
  add(sheep) {
    this._occupants.push(sheep);
  }
}