'use strict';

describe('Sheep', function() {
  var sheep;
  describe('say()', function() {
    it("it's name", function() {
      sheep = new Sheep('Gary');
      expect(sheep.sayName()).toBe('My name is Gary.');
    })
  })
})