# Delegation

> Delegate, delegate, delegate
> – Russ Olsen, Design Patterns in Ruby

This is a workshop to introduce you to the idea of Object-Oriented delegation.

## Learning Objectives:

- Describe 'delegation' as "the delegation of a responsibility to another class".
- Explain what is meant by the advice "Delegate, Delegate, Delegate".
- Implement OOP delegation.

## Instructions

This project contains two implementations of the user stories below: `/terrible` and `/great`.

```
As a customer
So I can get my clothes dry-cleaned
I want to ask a dry-cleaner to pick up my clothes
```

```
As a dry cleaner
So I can pick up clothes from a customer
I want to ask a courier to pick up the customer's clothes
```

```
As a courier
So I can satisfy my customers who want things picked up
I only want to use vans that have unbroken engines
```

```
As a customer
So that I know everything goes smoothly
I want a message that confirms my clothes will be picked up
```

`/terrible` implements the user stories using a poor understanding of the delegate principle.  `/great` implements the users stories using a good understanding of the delegate principle.  Unfortunately, `/great` is unfinished.  You must finish it.  Continue using its delegation approach.

Pending tests have been added for you. You don't have to use them if you don't want to.
