# TDD Process Workshop

## Workshop learning objectives:

(These objectives should be drawn out of the students at the end as reflections of what they have learnt. They should not be told these upfront so that their approach to the problem is authentic).

- **Learn how to break a problem down into simple steps and translate those steps into tests.**

- **Use strict TDD and use tests to drive your code without making assumptions about implementation.**

- **Further student understanding of TDD.**

This workshop is structured like a process review but with many students rather than just one.

Set student expectations for the workshop and tell them they should imagine they are alone and shouldn’t be talking to one another during the workshop as the aim is to see how they would approach the problem independently.

Think about communicating consequences of what happens if you don’t do these things.

## Instructions:

I am going to ask you to build a roman numerals app that takes a normal number and converts it to the roman numeral equivalent for the numbers up to and including 10. Say nothing else.

## First iteration

Tell the students they have five minutes to start approaching the problem in the way they see fit.

Walk round the room to observe different approaches the stop them after 5 minutes and ask what they did.

Comment on their approaches with the idea of showing them that rushing into code and setup shouldn’t be the first step to take.
Talk about anything interesting that people did.

## Second iteration

Encourage them to step back and break the problem down into a series of simple steps as if they were explaining this to a child or someone that doesn’t know anything about code.
Think about clear and specific language.

Give them 5 - 10 minutes

Ask them to summarise the app in one line and draw out useful names for methods and behaviour. For example:
“This is an app that converts numbers to numerals” => converts sounds like that should be our method name.

Find out what people said and try and simplify it so it doesn’t involve pseudo code, logic or syntax.

The steps shouldn’t involve jumping ahead and thinking about implementation, for example:

Thinking out black box tests and specifically inputs/outputs

```
Converts 0 to “”
Converts 1 to “I”
Converts 2 to “II”
Converts 3 to “III”
```


## Third iteration

Give people 15 minutes to take those simple steps and translate them into code.


## Plenary

Discuss what tests people wrote and what code they wrote - see if it’s the simplest implementation and tell them why the simplest implementation is useful:

Simplest possible solution
No over engineering
Helps to identify duplication and see a pattern
Helps to ultimately solve this kata

Write up the initial code for the first three tests people had. I believe the most basic solution to make the tests go green would be an if/else statement.

After the thirds test some duplication should be obvious (if number == *number* will be repeated multiple times) and the students should see a pattern and refactor at this point.


Ask students what the lessons are. Common learnings include:

Don’t rush into coding.
Break the problem down
Focus on the simplest test and the simplest code to pass that test

## Plenary

- Get people to reflect on what was learnt/main messages of the workshop and the process and TDD ideas (use the workshop objectives as a guide).

- Go through workshop objectives and do thumbs. Make sure the context of workshop is clear.
