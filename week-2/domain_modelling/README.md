# Domain modelling

## Learning objective

This is a workshop to practice your domain modelling skill.

## What is a domain model?

* A domain model is a representation of the nouns and verbs that correspond to the world simulated by a program.

* You can design a domain model by diagramming.

* Here are some user stories:

```
As a person
So I can have fun
I want to be able to flip a coin and find out if it came up heads or tails
```

```
As a person
So I can keep score
I want to be able to find out how many times the coin comes up heads
```

```
As a person
So I can rememeber my best score
I want to be able to print out my score
```

* Here is a domain model for these user stories that focuses on the messages (verbs) that are sent between entities (nouns):

```
+-----------+         +--------+
| HeadCount +--flip-->+  Coin  |
+-----------+         +--------+
```

## Why diagram a domain model?

* Every OO program has an implicit domain model, whether the programmer has diagrammed it or not.  Designing the domain model by writing code is much slower than doing it by diagramming.  If you diagram, you'll find problems in the domain model without needing to write any code.  The more problems you fix in your domain model on paper, the faster you'll be able to create a well architected program.

* If a programmer tried to implement the coin flipping program using the domain model above, they'd probably discover that it's a bad model.  For example, where does the score printing logic go? Is it really the responsibility of HeadCount to flip the coin?

* Instead of trying to code their way out of trouble, the programmer could redesign the domain model on paper, then go back to writing code.

## What does a domain model diagram include?

Domain models can take many forms.

* A sequence diagram. (See coach example.)

* Nouns and verbs using boxes and arrows. (As above.)

* Nouns and verbs in lists. (As you did at the beginning of week 1.)

Different forms work for different situations.  Experiment!

## How do you implement a program using a domain modelling-driven approach?

1. Diagram the domain model for your program.
2. Write code to implement the domain model.
3. If the domain model is hard to implement, or you're writing bad code, return to step 1.

## Instructions

* Using the process above, spend 25 minutes implementing the coin flipping program.

* For this workshop, so that you can focus on domain modelling and not rspec syntax, don't write tests.

* After the 25 minutes is up, spend another 25 minutes implementing the picky picnic user stories using the same domain modelling-driven approach.

### Picky picnic

```
As a picnicker
So I can go on a picnic
I want to have a hamper of sandwiches
```

```
As a picnicker
So I can satisfy my hunger
I want to be able to eat a sandwich
```

```
As a picnicker
So I can satisfy my picky eating habits
I want to be able to extract and eat one of the ingredients from a sandwich
```
