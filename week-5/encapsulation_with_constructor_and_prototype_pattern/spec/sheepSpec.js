'use strict';

describe('Sheep', function() {
  var sheep;
  var pen;
  beforeEach(function() {
    sheep = new Sheep('Gary');
  })
  describe('say()', function() {
    it("it's name", function() {
      expect(sheep.sayName()).toBe('Gary');
    })
  })
  describe('enter()', function() {
    it('a pen', function() {
      pen = new Pen();
      sheep.enter(pen);
      expect(pen.listNames()).toContain('Gary');
    })
  })
})