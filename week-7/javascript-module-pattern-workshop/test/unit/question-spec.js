var assert = require('chai').assert;
var question = require("../../js/question").question;

describe("question", function() {
  it("should add two question marks to passed string", function() {
    assert.equal(question("hello"), "hello??");
  });
});
