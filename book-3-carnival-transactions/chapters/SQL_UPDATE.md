# Update Operations

This chapter covers writing `UPDATE` statements for modifying data.

## Resources to Browse Before Class

- [PostgreSQL UPDATE Statement](https://www.youtube.com/watch?v=cd-hSl7_pGQ)
- [PostgreSQL UPDATE Tutorial](https://www.postgresqltutorial.com/postgresql-update/)
- [PosgreSQL UPDATES with JOINS](https://www.postgresqltutorial.com/postgresql-update-join/)


<br>

The `UPDATE` statement is used to edit existing records in a table. First you will need to provide the table name, the column names and values you wish to update.

You will likley need to add a WHERE clause to your statement to specify which records to update. If WHERE is not included then the UPDATE will apply to all records in the table.

Let's add a new sales type and add a new record for a sale that is of the newly added sales type.

Example UPDATE statement:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];
```

```sql
-- INSERT statement to add a new sale:
UPDATE  public.sales(sales_type_id, vehicle_id, employee_id, dealership_id, price, invoice_number)
VALUES (3, 21, 12, 7, 55999, 123477289);

-- INSERT statement to add a new sales type:
INSERT INTO public.salestypes(name)
VALUES ('Rent');
```