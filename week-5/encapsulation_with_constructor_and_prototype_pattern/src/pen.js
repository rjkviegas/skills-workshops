'use strict';

class Pen {
  constructor() {
    this._occupants = [];
  }
  add(sheep) {
    this._occupants.push(sheep);
  }
  listNames() {
    // var sheepNames = []
    // this._occupants.forEach(function(sheep){
    //   sheepNames.push((sheep.sayName()));
    // });
    // return sheepNames;
    return this._occupants
    .map(function(sheep) {
      return sheep.sayName();
    })
  }
}