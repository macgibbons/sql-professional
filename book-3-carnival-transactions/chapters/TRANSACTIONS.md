# Transactions

A SQL transaction is a single unit of work that could contain multiple operations. A transaction is only considered successful if all the operations in the transaction successfully complete.

## Resources to Browse Before Class

- [PostgreSQL Transaction](https://www.postgresqltutorial.com/postgresql-transaction/)
- [PostgreSQL Transactions](https://www.tutorialspoint.com/postgresql/postgresql_transactions.htm)
- [What are Transactions?](https://www.geeksforgeeks.org/sql-transactions/)
- [SQL Transaction](https://www.w3resource.com/sql/controlling-transactions.php)
- [Video: Database Transactions](https://www.youtube.com/watch?v=5Pia4UFuMKo)
- [Video: SQL Server Programming: Transactions](https://www.youtube.com/watch?v=is03uRYFgqc)

## ACID Properties

A transaction must meet the following four properties:

**Atomicity**: All operations within the transaction must be successful. Otherwise, the transaction is considered to have failed and all operations within the transaction will be rolled back.

**Consistency**: All changes made to the data must be valid. In other words, the state of the data must be valid before and after the transaction.

**Isolation**: No other operation should modify the data while the transaction is executing.

**Durability**: Changes made by the transactions must must be committed and stored in the database permanently.

## Writing a Transaction

The changes made by the transaction will not persist until the keyword `COMMIT`.

```sql
-- start a transaction
BEGIN;
-- You can also use BEGIN TRANSACTION; or BEGIN WORK;

-- insert a new row into the sales type table
INSERT INTO salestypes(name)
VALUES('Lease to Own');

-- commit the change
COMMIT;
-- You can also use COMMIT TRANSACTION; or COMMIT WORK;
```

## Rollback a Transaction

When we rollback a transaction, we are essentially undoing all operations in the transaction.

```sql
-- start a transaction
BEGIN;
-- You can also use BEGIN TRANSACTION; or BEGIN WORK;

-- insert a new row into the sales type table
INSERT INTO employeetypes(name)
VALUES('Accountant');

-- roll back the transaction
ROLLBACK;
-- You can also use ROLLBACK TRANSACTION; or ROLLBACK WORK;
```
## Savepoint

A savepoint allows you to define a special mark within the transaction. You can then use the savepoint to do a partial rollback. 

```sql
-- start a transaction
BEGIN;
-- You can also use BEGIN TRANSACTION; or BEGIN WORK;

-- insert a new row into the sales type table
INSERT INTO salestypes(name)
VALUES('Lease to Own');

SAVEPOINT foo;

-- insert a new row into the employees table
INSERT INTO employees(name)
VALUES('Accountant');

-- roll back to the savepoint
ROLLBACK TO SAVEPOINT foo;
```

## Naming your Transactions 

Now let's look at an example of a named transaction where we use try/catch. Just like the try/catch we have seen application development, we want to try a block of operations. If any of them fail, then we want to handle the failure. Which is exactly what a transaction allows us to do!

```sql
BEGIN TRANSACTION [CommitToStock]

  BEGIN TRY
      DECLARE @EntryTS datetime;
      SET @EntryTS = CURRENT_TIMESTAMP

      INSERT INTO Inventory ([Make], [Model], [Year], [Status], [LifetimeStart])
      VALUES ('Ford', 'F-150', 2017, 'PENDING_INSPECTION', @EntryTS),
             ('Subaru', 'Forester', 2019, 'PENDING_INSPECTION', @EntryTS);

      DECLARE @UpdateTS datetime;
      SET @UpdateTS = CURRENT_TIMESTAMP

      UPDATE Inventory
      SET [Status] = 'IN_STOCK'
      WHERE Inventory.[Status] = 'PENDING_INSPECTION'
      AND @UpdateTS > Inventory.[LifetimeStart];

      COMMIT TRANSACTION [CommitToStock]

  END TRY

  BEGIN CATCH

      ROLLBACK TRANSACTION [CommitToStock]

  END CATCH
```

## Practice: Carnival

1. Write a transaction that is responsible for adding an employee and assigning them to a dealership.
1. Write a transaction to remove an employee from the database. The transaction must include operations to remove the relationship between the employee and any dealerships that may exist.
