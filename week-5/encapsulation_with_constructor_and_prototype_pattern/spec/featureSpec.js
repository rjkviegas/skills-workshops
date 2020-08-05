'use strict';

describe('Feature Test', function() {
  var sheep;
  var pen;
  beforeEach(function() {
    sheep = new Sheep('Gary');
  })
  describe('a sheep can', function() {
    it("say it's name", function() {
      expect(sheep.sayName()).toBe('My name is Gary.');
    })
    it('enter a pen', function() {
      pen = new Pen();
      sheep.enter(pen);
      expect(pen.list()).toContain(sheep);
    })
  })
})