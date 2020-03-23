# Code Review

## Learning objectives

1. Describe high quality code
1. Explain why development teams do code reviews
1. Use a GitHub pull request to review someone else's code

## Introduction (15 min)

### What is high quality code?

Code is high quality when it is **easy to change** and **easy to enhance** with
new features.

You might think that the quality of your code does not matter to your customers,
because they cannot see it. But customers do care that you can release new
features quickly.

### How can we improve our code?

We can use tools to help us improve code quality:
- use a code linter
- write tests
- check the tests pass

However, these tools have limitations, so the next step is ask another developer
to do a code review.

Most development teams perform code review using _change requests_. On GitHub
these are called _pull requests_. Typically a developer works on some code and
asks another developer to review it.

In pair programming, code review is done continuously by the pair as they work
together. Change requests are rare.

### Let's help others improve

> "A key point here is that there is no such thing as “perfect” code—there is
> only better code."
>
> —Google Engineering

Let's focus on helping others improve. This is a key skill for all developers
working as part of a team.

The better everyone in your team is, the better work everyone can do,
the better your code becomes, the more value you can deliver to customers.

## Exercise (60 min)

### 1. Prepare for code review (solo)

1. Create a pull request for your weekend challenge
1. Describe **why** you are proposing the change
1. Summarise **what** is included in the change
1. Point out any parts that are incomplete
1. Draw attention to parts you'd like to improve
1. Send the link to your pair

### 2. Do a code review (solo)

First, read this :pill: [guide to code review](https://github.com/makersacademy/course/blob/master/how-to/code-review.md).

Review your pair's code **without referring to the challenge rubric**. Stretch
yourself to see how much feedback you can think of before you move on.

Write your feedback as comments on their pull request. Use [line comments](https://help.github.com/en/github/collaborating-with-issues-and-pull-requests/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)
to give feedback in context.

1. **Appreciate** at least one thing you like in the pull request. For example: a
clear name, something easy to understand, or a good test case.
1. **Suggest** at least one thing that might improve the code. Try to give a
reason why your suggestion would be an improvement.
1. **Respond** to any questions the author has asked. Illustrate your answers using code snippets and links to relevant resources. If you don't know, then say so.

### 3. Improve your code (in pairs)

When you have both completed steps 1 and 2, read the feedback on your own pull
requests.

1. Choose one improvement to make to your challenge and make a commit to
address it.
1. Push it and see the update on your pull request.
1. Repeat with your pair's challenge.

## Plenary (15 min)

Let's gather and pool any outstanding questions we have and share any resources
we think could help us improve the quality of our code.

And let's reflect on our code review feedback:
- What feedback helped you improve?
- What feedback didn't help you?

## Further reading

- [Code Review Developer Guide](https://google.github.io/eng-practices/review/),
Google Engineering
- [Is High Quality Software Worth the Cost?
](https://martinfowler.com/articles/is-quality-worth-cost.html), Martin Fowler
