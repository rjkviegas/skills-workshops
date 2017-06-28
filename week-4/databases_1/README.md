# Diagramming database structure (1 hour)

## Learning objectives

1. Infer a domain from some code.
2. Infer the structure of a database from a domain and diagram this structure.

## Setup

```
cd path/to/databases_1/
bundle install
createdb databases_1
createdb databases_1_test
```

## Running the code

```
cd path/to/databases_1/
ruby run.rb
```

## Running the tests

```
cd path/to/databases_1/
rspec
```

## Instructions

You have three classes that constitute a domain, with a mix of computed methods, properties and relations. 

### Infer the domain (20 mins)

* Look at the code and figure out the domain of the program: the nouns and verbs of the system.

* Represent these nouns and verbs in a diagram, table, or another form feels useful to you.

### Infer the database structure (20 mins)

* Diagram diagram the underlying database structure of the classes.

* Ideally, your diagram will include:
  * Table names.
  * Column names.
  * Column datatypes.
  * An indication of which columns are the primary keys and which are the foreign keys.
  * The DataMapper relationships between the columns/tables.
  * The data relationships between the columns/tables (eg one to one).
