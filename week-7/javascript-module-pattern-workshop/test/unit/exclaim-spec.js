var assert = require('chai').assert;
var exclaim = require("../../js/exclaim").exclaim;

describe("exclaim", function() {
  it("should add an exclamation mark to passed string", function() {
    assert.equal(exclaim("hello"), "hello!");
  });
});
