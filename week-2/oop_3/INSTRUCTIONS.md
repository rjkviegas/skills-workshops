# OOP 3: Delegation (1 hour)

## Learning Objectives:

- Describe "delegation" as "the delegation of a responsibility to another class".
- Explain what is meant by the advice "delegate, delegate, delegate".
- Implement OOP delegation.

## Starter (10 minutes)

Give the following as a demonstration (you can use pseudocode, code, diagramming as you wish):

In a company, there are three executives: Ina, the CEO, Brad, the COO, and Lydia, HR manager. Ina needs to make the company more efficient. So:

- `CEO` executes a method `make_company_efficient`. This delegates to `COO`'s method `find_company_savings`.
- The `COO`'s method does a couple of things like `sell_old_equipment` and `reduce_entertainment_budget`. It then calls `HRManager`'s method `reduce_payroll`.
- `HRManager`'s method `reduce_payroll` iterates through employees and calls `employee.fire if employee.performance < 7`.
- In this example, neither the CEO nor the COO are responsible for firing employees, and both have plausible deniability. That responsibility has been delegated to the HR Manager, who will have to handle the angry letters herself.

> Here is a [Board example](https://github.com/sjmog/oop_3_may2017/blob/master/company_structure.JPG) and a [Coded example](https://github.com/sjmog/oop_3_may2017/blob/master/company.rb). It can be helpful to demo the structure on the board, then in code, referring between the two.

For another example: introduce [Steve Jobs' definition of delegation in OOP](http://www.edibleapple.com/2011/10/29/steve-jobs-explains-object-oriented-programming/).

## Main (45 minutes)

Instructions are in [the README](README.md).

## Plenary (15 minutes)

### Get some of the students' code up on the projector

### Discussion

What happened during the refactor of the system?

#### Common themes

- They diagrammed (hopefully)
- Behaviour didn't move, it got encapsulated
- Some behaviour could be made more abstract via delegation
- Some classes emerged that were just interfaces to other classes (_this is a good opportunity to discuss the 'God Class' antipattern_).

#### Prerequisites

- Injection
- Encapsulation
- Single Responsibility Principle

### Exemplar

`solution-do-not-look-until-the-end/`
