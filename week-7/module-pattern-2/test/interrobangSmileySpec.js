describe("interrobangSmiley", function() {
  it("adds an interrobang and a smiley to the given text", function() {
    expect(interrobangSmiley("hello")).toEqual("hello??! :)")
    expect(interrobangSmiley("OK")).toEqual("OK??! :)")
  })
})
