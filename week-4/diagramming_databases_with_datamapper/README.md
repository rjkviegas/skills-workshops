# Diagramming database structure with DataMapper (1 hour)

## Learning objectives

1. Infer a domain from some code.
2. Infer the structure of a database from a domain and diagram this structure.

## Setup

```
cd path/to/diagramming_databases_with_datamapper/
bundle install
createdb diagramming_databases
createdb diagramming_databases_test
```

## Run the code

```
cd path/to/diagramming_databases_with_datamapper/
ruby run.rb
```

## Run the tests

```
cd path/to/diagramming_databases_with_datamapper/
rspec
```

## Spelunking DataMapper code

* Have a look at [this class that uses DataMapper](./example_of_class_that_uses_datamapper.rb).

* Walk through the code token by token.  For each token, ask: **How does this relate to the other parts of the code or the table?**. As you go through the code, try to incorporate these ideas into your answers:
  * Class
  * Method
  * Object
  * Attribute
  * Property
  * Table
  * Row
  * Column
  * Header

* Here are some example questions to help tease out the relationships between the parts of the code and the table.
  * `Person`. This is the `Person` class.
  * `create`. This is a class method provided by `DataMapper::Resource`.  What does it do?
  * `name:` What does `name:` correspond to? What if we put `blah:` instead?
  * `timmy.print_name`. Where does `print_name` come from? The class or object?
  * `timmy.name`. Why can we `.name`? (Maybe ask about how and when the data gets from table to attribute to accessor.)
  * `timmy.save`.  Where does `save` come from? What does it do?
  * `property :id`. How does this relate to the table?
  * `0  | Isla`. Where is this represented in the code?

## Exercise

You have three classes that constitute a domain, with a mix of computed methods, properties and relations.

### Infer the domain (20 mins)

* Look at the code and figure out the domain of the program: the nouns and verbs of the system.

* Represent these nouns and verbs in a diagram, or another form that feels useful to you.

### Infer the database structure (20 mins)

* Diagram the underlying database structure of the classes.

* Ideally, your diagram will include:
  * Table names.
  * Column names.
  * Column datatypes.
  * An indication of which columns are the primary keys and which are the foreign keys.
  * The DataMapper relationships between the columns/tables.
  * The data relationships between the columns/tables (eg one to one).
