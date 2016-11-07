describe("interrobang", function() {
  it("should add two question marks and an exclamation mark to passed string", function() {
    expect(interrobang(exclaim, question, "hello")).toEqual("hello??!");
  });
});