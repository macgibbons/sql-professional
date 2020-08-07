# Relationships and Normalization

## Database Normalization

Data normalization is a design technique that is used to reduce data redundancy and increase data integrity. This helps to avoid modifying our database as it grows and simplify our queries.

The three commonly used forms of database normalization are 1st, 2nd and 3rd normal form or 1NF, 2NF and 3NF. There are additonal normal forms but we will not be covering those advanced normal forms. 

Normal forms are progressive. This means in order for a database to be considered 3NF, it already meets all requirements for 2NF and 1NF. And in order for a database to qualify for 2NF, it satisfies all the rules for INF.

Here is our initial data before any normalization:

![before normalization](./images/normalization_initial.png)


## 1NF

1. The values in each column of a table must be atomic.
1. There are no repeating groups of columns.

Here is our data after we meet the above requirements:

![1nf](./images/normalization_1nf.png)


## 2NF

1. Table must be in 1NF.
1. Every non candidate-key attribute must depend on the whole candidate key, not just part of it. This means that the primary key must be a single column.

The data once it satisfies all conditions for 2NF:

![2nf](./images/normalization_2nf.png)

## 3NF

1. Table must be in 2NF.
1. The table has no transitive dependencies. A transitive dependency means that if you change the value of a column, the value of another column will also change.

Our normalized database:

![3nf](./images/normalization_3nf.png)

## Practice: Student Exercises

Given the following [data](./data/normalization/student_exercises.csv), what would it look like in 1NF, 2NF and 3NF?

## Practice: Patients

Normalize the following [data](./data/normalization/patients.csv) so that it meets all requirements for 3NF.
