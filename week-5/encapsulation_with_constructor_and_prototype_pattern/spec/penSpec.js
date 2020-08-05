'use strict';

describe('Pen', function() {
  var pen;
  var sheep;
  beforeEach(function() {
    pen = new Pen();
  })
  describe('listNames', function() {
    it('returns a list', function() {
      expect(pen.listNames()).toBeInstanceOf(Array);
    })
  })
  describe('add()', function() {
    it("a sheep to pen", function() {
      sheep = new Sheep('Gary');
      pen.add(sheep);
      expect(pen.listNames()).toContain('Gary');
    })
  })
})