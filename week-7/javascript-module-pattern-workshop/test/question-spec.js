describe("question", function() {
  it("should add two question marks to passed string", function() {
    expect(question("hello")).toEqual("hello??");
  });
});
