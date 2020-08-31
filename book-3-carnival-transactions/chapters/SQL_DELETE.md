# Deleting Data

This chapter covers writing `DELETE FROM` statements and how they are affected by foreign key constraints.


## Resources to Browse Before Class

- [PostgreSQL DELETE FROM Statement](https://www.youtube.com/watch?v=c7AAkX39_Wo)
- [PostgreSQL DELETE FROM Tutorial](https://www.postgresqltutorial.com/postgresql-delete/)
- [ON DELETE SET NULL Example](https://til.hashrocket.com/posts/c6866dc6c1-set-foreign-key-to-null-on-delete-in-postgres)
- [DELETE CASCADE Tutorial](https://kb.objectrocket.com/postgresql/how-to-use-the-postgresql-delete-cascade-1369)
- [PosgreSQL DELETE with JOINS](https://www.postgresqltutorial.com/postgresql-delete-join/)

<br>

The `DELETE FROM` statement is used to delete existing records in a table. First you will need to provide the table name and then a WHERE clause to specify which records to delete. If WHERE is not included then all records would be deleted.

Example UPDATE statement:
```sql
UPDATE table_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];
```

Let's delete an existing sales record from the Sales table

```sql
-- DELETE statement to delete a sales record:
DELETE FROM  sales WHERE sales_id = 100;

-- DELETE statement to delete a sales record:
DELETE FROM  sales WHERE sales_id = 100;
```