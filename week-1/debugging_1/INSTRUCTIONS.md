# Debugging 1: Intro to Debugging

Introduce a debugging process with three bugs of varying difficulty.

## Learning Objectives

- Define 'debugging' as the process of eliminating bugs from an expected program output
- Explain the mantra
- Use the mantra 'Tighten the loop; Get visibility' to resolve bugs of varying difficulty.

## Starter (15 minutes)

Start debugging the app.  Fix an easy bug. Demonstrate precisely the following two-part process to debug it:

- Tighten the loop (find the _exact line_ the bug is coming from)
- Get visibility (use `p` to inspect everything to help you home in on the exact line)

Essentially, we are trying to convince students out of their 'default approach': trying random or researched things until the problem they're facing goes away. Be very strong with this line:

- Once you know the _one thing_ that is wrong, out of place, misspelled, or not giving you what you expect, try to fix it.

## Main (30 minutes)

Students clone this repository. In this program, there are three bugs. Students have to find them, and fix them. They have to do this as systematically as possible, following the damned mantra.

## Plenary (15 minutes)

Students demonstrate each of the bugs and how they fixed them.

- One is a reasonably simple typo
- The second is a more nefarious typo
- The third is a typo in a gem upon which the project is dependent

Each time, the process should be the same: elicit this.
