'use strict';

describe('Pen', function() {
  var pen;
  var sheep;
  beforeEach(function() {
    pen = new Pen();
  })
  describe('occupants', function() {
    it('returns a list', function() {
      expect(pen.list()).toBeInstanceOf(Array);
    })
  })
  describe('add()', function() {
    it("a sheep to pen", function() {
      sheep = new Sheep('Gary');
      pen.add(sheep);
      expect(pen.list()).toContain(sheep);
    })
  })
})