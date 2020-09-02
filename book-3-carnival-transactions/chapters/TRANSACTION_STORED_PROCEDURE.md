# Using Transactions in Procedures

We learned that transactions ensure that a set of operations can be a single atomic action that either succeeds or fails, therefore providing consistency.

Stored procedures are a series of SQL statements that are saved and can be invoked. We can optionally pass in parameters and have the stored procedure return data.

What happens when we put the two together?

## Resources to Browse Before Class

- [Managing Transactions in SQL Server Stored Procedures](https://www.4guysfromrolla.com/webtech/080305-1.shtml)
- [Transaction in stored procedure in SQL Server](http://techfunda.com/howto/192/transaction-in-stored-procedure)
- [An Overview of Stored Procedures in PostgreSQL](https://severalnines.com/database-blog/overview-new-stored-procedures-postgresql-11#:~:text=Traditionally%2C%20PostgreSQL%20has%20provided%20all,or%20open%20a%20new%20one.)
- [Video: Transaction within Stored Procedure](https://www.youtube.com/watch?v=KGpWMyb4ODA)
- [Video: Stored Procedures For Transactions](https://www.youtube.com/watch?v=njnbdnEnmlc)
- [Handling Transactions in Nested SQL Server Stored Procedures](https://www.mssqltips.com/sqlservertip/4897/handling-transactions-in-nested-sql-server-stored-procedures/)

## Why transactional stored procedures?

A complex stored procedure could have a series of statements that must all be executed successfully. If any statement fails, anything that happened previously must be undone, or rolled back. To handle this scenario, we can write complex stored procedures that contain transactions.

Examples of where transactional stored procedures would be used:

* Bank cash transfers _(debit/credit)_
* Inventory updates _(purchase confirmation, update inventory status, ship item)_
* Hiring an employee _(new employee record, new department/employee record, payroll record created)_

### Examples of Transactional Stored Procedures 

```sql
create or replace procedure transfer(
   sender int,
   receiver int, 
   amount dec
)
language plpgsql    
as $$
begin
    -- subtracting the amount from the sender's account 
    update accounts 
    set balance = balance - amount 
    where id = sender;

    -- adding the amount to the receiver's account
    update accounts 
    set balance = balance + amount 
    where id = receiver;

    commit;
end;$$
```

## Practice: Carnival

1. 
1. 
