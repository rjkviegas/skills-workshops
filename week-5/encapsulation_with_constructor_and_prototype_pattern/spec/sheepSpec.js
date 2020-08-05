'use strict';

describe('Sheep', function() {
  var sheep;
  describe('name', function() {
    it('has a name', function() {
      sheep = new Sheep('Gary');
      expect(sheep.name).toBe('Gary');
    })
  })
})