# Making code simpler through polymorphism

## Starter (15 minutes)

* Do thumbs on the learning objectives.

* Talk through the code in the Introduction section to illustrate refactoring for polymorphism.

* Ask the students for their thoughts on how the code example relates to duck typing.  Draw out this idea:
  * If it moves like a vehicle, it must be a vehicle.  So you can use it like a vehicle.

* Ask the students for their thoughts on what makes the polymorphic version simpler.  Draw out these ideas:
  * It's simpler to understand a group of polymorphic classes because they all share the same concept.
  * The shared code for a polymorphism is more reuseable.
  * On the other hand, a polymorphism is sometimes more abstract and therefore harder to understand. eg `fly` vs `move`.

## Main (45 minutes)

Instructions are in [the README](README.md).

## Plenary (15 minutes)

### Get some of the students' code up on the projector

* Did they implement a polymorphism for checking `TruthyAssertion` and `EqualAssertion`?

* Did they include `AssertionList` in the polymorphism by making `run_all_assertions` implement the same interface?

### Exemplar

`solution-do-not-look-until-the-end/`
