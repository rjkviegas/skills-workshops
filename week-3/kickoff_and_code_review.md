# Code Review

Before the code review, devs can peer-review each others' Weekend Challenge code using the [https://github.com/makersacademy/takeaway-challenge/blob/master/docs/review.md rubric]

It might be useful to pick out a few Pull Requests from the devs' weekend challenges so you can use real life examples in the group session.

During the code review session:

- Ask the students what went well and what was challenging.
- Ask them to write down the questions they had from the weekend challenge on the board.


## Common questions:

- Testing/Stubbing Twilio.
- How to plan and break down the problem.
- Ambiguous user stories.
- How to use doubles and how to stub methods in tests.

## Useful things to reiterate

- Good naming.
- Single responsibility.
- Cohesion.
- Dependency injection - why and how we use it in our code and in our tests.
- How to use doubles and that we never double the class which we're testing and why not.
- How we test randomness, where the rand method lives and how we stub Kernal.
- How we wrap 3rd party code (like Twilio) in our own classes and methods so that we    have control over it.
- Testing behaviour not state. At this stage this should be kept very basic. The main concern is that they don't have tests that expect the state of an instance variables to be a certain way (like an empty list) and then have code where that instance variable is always hardcoded as an empty list.


# Kick-off

Intro them to this week’s work and read through the week outline.

- Do a high level diagram of the request/response cycle and ask them to see how this applies to their current understanding.

- Guide them in identifying the client, the request, the server and the response from the diagram.

- Explain that their logic (work done up until now) right now has been independent of view layer which they will be looking at this week and data persistence which they will do more about in week 4.
