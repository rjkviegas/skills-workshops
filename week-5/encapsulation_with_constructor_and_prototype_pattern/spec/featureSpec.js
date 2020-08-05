'use strict';

describe('Feature Test', function() {
  var sheep;
  describe('a sheep can say', function() {
    it("it's name", function() {
      sheep = new Sheep('Gary');
      expect(sheep.sayName()).toBe('My name is Gary.');
    })
  })
})