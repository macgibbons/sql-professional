# Creating Carnival Reports

As Carnival grows, we have been asked to help solve two issues:

1. It has become more and more difficult for the accounting department to keep track of the all the records in the sales table and how much money came in from each sale. 

1. HR currently has a overflowing filing cabinet with files on each employee, with a list of dealerships they have previous worked at and the dealerships they currently work at. All the files on previous employees are in a pile next to the cabinet.

## Goals

 - Using CREATE to add new tables
 - Using triggers
 - Using stored procedures
 - Using transactions

## Practice

Provide a way for the accounting team to track all financial transactions by creating a new table called Accounts Receivable. The table should have the following columns: credit_amount, debit_amount, date_received as well as a PK and a FK to associate a sale with each transaction.

1. Set up a trigger on the Sales table. When a new row is added, add a new record to the Accounts Receivable table with the deposit as credit_amount, the timestamp as date_received and the appropriate sale_id.
1. Set up a trigger on the Sales table for when the sale_returned flag is updated. Add a new row to the Accounts Recievable table with the deposit as debit_amount, the timestamp as date_received, etc.

## Practice

Help out HR keep track of employee history by creating a Employee History table with all the same columns as the Employee table plus a date_modified column and a flag for indicating whether an employee still works at Carnival.

1. Create a stored procedure with a transaction to handle hiring a new employee. Add a new record for the employee in the Employees table and add a record to the Dealershipemployees table for the first dealership the new employee will start at.

1. Create a stored procedure with a transaction to handle an employee leaving. The employee record is removed and all records associating the employee with dealerships must also be removed.
