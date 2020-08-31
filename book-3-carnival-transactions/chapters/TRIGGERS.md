# Triggers Introduction

Introduce the why and how of triggers to respond to events in the database.

A quick example of updating the the value of a car after it's been leased or sold?

Maybe a trigger that prevents a car from being added to a dealership if their inventory is currently maxed out?

A trigger is a user-defined function that is executed when a specific action occurs. Once the trigger has been defined, it is put into action automatically when the appropriate event takes place. 

## Resources to Browse Before Class

- [Introduction to PostgreSQL Trigger](https://www.postgresqltutorial.com/introduction-postgresql-trigger/)
- [PostgreSQL CREATE TRIGGER](https://www.postgresqltutorial.com/creating-first-trigger-postgresql/)
- [PostgreSQL Triggers Explained](https://www.tutorialspoint.com/postgresql/postgresql_triggers.htm)
- [Video: Triggers in SQL](https://www.youtube.com/watch?v=f6VWSlnHGCE)
- [Video: SQL Triggers](https://www.youtube.com/watch?v=gpthfJnvzY8)
- [Learning about DML Triggers](https://www.sqlservercentral.com/articles/learning-about-dml-triggers#:~:text=This%20article%20covers%20DML%20triggers,statements%20used%20to%20manipulate%20data.&text=DDL%20triggers%20are%20triggers%20that,Definition%20Language%20statements%20are%20fired.)


## PostgreSQL Trigger: Keep in Mind

- Triggers must always be associated with a table. 
- You can define a trigger for the following events: INSERT, UPDATE, DELETE or TRUNCATE.
- There are row and statement-level triggers: The row-level trigger is invoked once for every row that is affected. The statement-level trigger is invoked only once for each event.
- A trigger can be defined to be invoked before or after the event.

## Create Trigger
