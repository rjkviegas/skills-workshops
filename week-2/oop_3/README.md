# Delegation

> Delegate, delegate, delegate
> – Russ Olsen, Design Patterns in Ruby

This is a workshop to introduce you to the idea of Object-Oriented delegation.

## Learning Objectives:

- Describe 'delegation' as "the delegation of a responsibility to another class".
- Explain what is meant by the advice "Delegate, Delegate, Delegate".
- Implement OOP delegation.

### Instructions

This project contains two main implementations of a program to get clothes dry-cleaned. One implementation (`/terrible`) demonstrates a poor understanding of the above principle. The other (`/great`) demonstrates a good understanding.

`/great` is currently unfinished. You must refactor `/terrible`, using delegation, to `/great`. Pending tests have been added for you: you don't have to use them if you don't want to.

The following set of user stories are implemented in `/terrible`:

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
