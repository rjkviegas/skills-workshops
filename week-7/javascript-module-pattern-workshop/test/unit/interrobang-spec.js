var assert = require('chai').assert;

var question = require("../../js/question").question;
var exclaim = require("../../js/exclaim").exclaim;
var interrobang = require("../../js/interrobang").interrobang;

describe("interrobang", function() {
  it("should add two question marks and an exclamation mark to passed string", function() {
    assert.equal(interrobang(exclaim, question, "hello"), "hello??!");
  });
});
