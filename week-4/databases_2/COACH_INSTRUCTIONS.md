# Databases 2: from Domain Models to Database Structures (1h)

### Learning Objectives

1. Explain how to use CRC cards to model a domain
2. Model a simple domain using CRC cards
3. Infer database structure from domain structure

### Starter (15 minutes)

Demonstrate examples of CRC cards (you can use [this example](crc_example.md)). Collaboratively pull a database structure from the CRC cards in the way suggested in [the student readme](README.md).

### Main (40 minutes)

See [the student readme](README.md) for instructions.

### Plenary (15 minutes)

Collaboratively review students' suggested structures. See the suggested solution belowe.

> Focus more on the database structures than on the CRC modelling.

# Suggested solution (students, don't read this until the end!)

Here is a suggested table structure that satisfies the domain.

```
Table: students
|------|--------|-------------|-----------|
|  id  |  name  |  image_url  | cohort_id |
|------|--------|-------------|-----------|
|  1   |  "Yu"  | "yu.me/pic" |     1     |
|------|--------|-------------|-----------|
```

```
Table: cohorts
|------|------------|
|  id  |    name    |
|------|------------|
|   1  | "May 2016" |
|------|------------|
```

```
Table: tags
|------|------|
|  id  | name |
|------|------|
|   1  | "OK" |
|------|------|
```

```
Table: students_tags
|------|------------|--------|
|  id  | student_id | tag_id |
|------|------------|--------|
|   1  |      1     |    1   |
|------|------------|--------|
```

```
Table: daily_ratings
|------|------------|----------|-------------|
|  id  | student_id |  rating  | created_at  |
|------|------------|----------|-------------|
|   1  |      1     |    10    | 20160406:17 |
|------|------------|----------|-------------|
```

## Association Overview

1. Students `belong_to` a Cohort (so they have a foreign `cohort_id` key in the `students` table). Correspondingly, Cohorts `have_many` students.
2. Students are in a `many_to_many` relationship with Tags, because:
  - a Student can have many Tags (like 'ok', 'good', 'happy');
  - a Tag can have many Students (like Jane, Steve, and Ilya are all 'ok').

> To achieve this, there is a 'join' table called `students_tags`. To retrieve all students with a particular tag - say, the 'ok' tag - we:
- Go to the `tags` table, look up the ID of the tag that has a name;
- Find that ID in the `tag_id` column of the `students_tags` 'join' table;
- Retrieve a list of all the `students_tags` that have that `tag_id`;
- Fetch all records from the `students` table that appear in the `student_id` column for those `student_tags` you just retrieved.

3. Daily Ratings `belong_to` a student. Correspondingly, Students `have_many` Daily Ratings.

## Gotchas

- Students do not need to store the average rating: they can calculate that in the model layer, given all the ratings they ever made.
- When Model A `has_many` of Model B, _Model A's foreign key appears in Model B's table_.
- Join tables can be tricky. Trace the information flow in the comment above with a finger to make it clearer.
