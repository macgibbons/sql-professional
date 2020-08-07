# Inserting Data

This chapter covers the `INSERT INTO` statement. Discuss order of operations in the context of the relationships (i.e. data with an external dependecy should be created first).

## Resources to Browse Before Class

- [PostgreSQL INSERT](https://www.postgresqltutorial.com/postgresql-insert/)
- [PostgreSQL INSERT Multiple Rows](https://www.postgresqltutorial.com/postgresql-insert-multiple-rows/)
- [Inserting Data into Tables](https://www.youtube.com/watch?v=Tet3Z7Yb2gg)
- [INSERT INTO Statement](https://www.youtube.com/watch?v=VkabxQgtGsA)
- [SQL INSERT Statement](https://www.geeksforgeeks.org/sql-insert-statement/)

## INSERT INTO

The INSERT INTO statement is used to add new records to a table. 

If you provide values for all columns (that will not auto-increment, i.e., PK) when you are adding a new row, you do not have to explicitly specify the column names. 

If you want to only add data to specific columns when you add a new record, then you must list out the columns for which your will be providing data.


```sql
-- INSERT statement where columns are listed:
INSERT INTO public.sales(
  sales_type_id, vehicle_id, employee_id, dealership_id, price, purchase_date, pickup_date, invoice_number, payment_method)
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);

-- INSERT statement without explicit columns names:
INSERT INTO public.salestypes
VALUES ("Lease to Buy");
```




## Practice: Carnival

1.  Pick two of your friends or family and write a single INSERT statement to add both of them to the Customers table.
1. Think of your dream car. In order to add this car to the Vehicles table, you might need to add data to the VehicleTypes, BodyTypes, Makes and/or Models tables. Make sure the statements are ordered so that you can execute all your INSERT statements together.
1. Use INSERT statements to add a new employee with the following info. This employee works shifts at the first three dealerships listed in your Dealerships table:

    - Name: Kennie Maharg
    - Email: kmaharge@com.com	
    - Phone: 598-678-4885
    - Role: Customer Service
