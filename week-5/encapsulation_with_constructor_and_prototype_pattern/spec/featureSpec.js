'use strict';

describe('Feature Test', function() {
  var sheep;
  var sheep2;
  var pen;
  beforeEach(function() {
    sheep = new Sheep('Gary');
    pen = new Pen();
  })
  describe('a sheep can', function() {
    it("say it's name", function() {
      expect(sheep.sayName()).toBe('Gary');
    })
    it('enter a pen', function() {
      sheep.enter(pen);
      expect(pen.listNames()).toContain('Gary');
    })
  })
  describe('a pen', function() {
    it('can list the name of the sheep occupying it', function() {
      sheep.enter(pen);
      expect(pen.listNames()).toContain('Gary');
    })
    it('can list the names of multiple sheep occupying it', function() {
      sheep2 = new Sheep('Timmy');
      sheep.enter(pen);
      sheep2.enter(pen);
      expect(pen.listNames()).toContain('Gary')
      expect(pen.listNames()).toContain('Timmy')
    })
  })
})