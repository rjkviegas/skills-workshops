# Debugging 2

Tightening the loop and getting visibility (on the web).

## Learning Objectives

- Define 'debugging' as the process of eliminating bugs from an expected program output
- Explain the mantra
- Use the mantra 'Tighten the loop; Get visibility' to resolve bugs across the web stack.

## Starter (15 minutes)

Start debugging the app.  Fix an easy bug (suggested: `spec/features/random_happy_emoji_spec.rb`). Demonstrate precisely the following two-part process to debug it:

- Tighten the loop (find the _exact line_ the bug is coming from)
- Get some insight (use `p` to inspect everything in the region of that line)

Essentially, we are trying to convince students out of their 'default approach': trying random or researched things until the problem they're facing goes away. Be very strong with this line:

- Once you know the _one thing_ that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

## Main (40 minutes)

Students clone this repository. In this program, there are several bugs. Students have to find them, and fix them. They have to do this as systematically as possible, following the damned mantra.

### New Test and Error

- There is now a second test in the spec/units/random_happy_emoji_spec.rb - this is to try and encourage students to add to the array rather than changing the smiley from ':D' to ':)' as they might do at first glance.

## Plenary (15 minutes)

Students demonstrate each of the bugs and how they fixed them.

Each time, the process should be the same: elicit this.
