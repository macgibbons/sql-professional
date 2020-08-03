# Creating Database Tables

This chapter will show how to use the `CREATE TABLE` statement to create the table, the attributes, and the relationship constraints.

## Tools

1. PostgreSQL - You should already have PosgreSQL installed from the Getting Started Chapter.

2. pgAdmin & PSQL Shell - Should come along with the installation of your PostgreSQL database management system.

3. Read [pgAdmin 4 Documentation](https://www.pgadmin.org/docs/pgadmin4/latest/index.html)

## Goals

After this chapter, doing the exercises, and discussing with your instructor, you should understand the following concepts.

1. Creating a new database with pgAdmin
2. Creating a table in your new database
3. How to define your field data types
1. How to add a relationship between tables

<br>

## Carnival's Next Steps
After the ERD design of their database Carnival is ready to actually build their database. They decided to use a PostgreSQL database and the native database administration software, pgAdmin 4 for the GUI interface.


For now we will use the GUI, *pgAdmin 4* to interact with our database. But you should know that it is possible to use the interactive terminal named, *PSQL Shell* that comes with your installation of PostgreSQL. [More info on PSQL](http://postgresguide.com/utilities/psql.html).


### Let's begin with creating an new database in pgAdmin!

pgAdmin is a browser-based software that connects to the local database on your computer. It's important to note that this is not a cloud-based software. It is in fact installed on your machine. It just runs itself in the browser.

### How to create a database with pgAdmin?

1. Once you launch pgAdmin you should see a screen that looks like a directory with a top level folder named > Servers.

<img src="./images/initial_state.png" width="500">

<br>
<br>

2. Your next step is to open the > *Servers* to see the inside tree structure.

<img src="./images/open_servers.png" width="500">

<br>
<br>

3. Right click on *PostgreSQL 12* and hover over  *Create* and then click on *Database*.

<img src="./images/create_db.png" width="500">

<br>
<br>

4. Then, simply name the database and click *Save*.

<img src="./images/naming_db.png" width="500">

<br>
<br>

4. You should now be able to see your new database nested under the *Databases* directory.

<img src="./images/new_carnival_db.png" width="500">

<br>
<br>

### Query Editor

To be able to start writing SQL into your editor look for this icon <img src="./images/query_icon.png">  in the menu bar. This will open the query editor tool.

<br>

## How to create a table

We are all set with our PostgreSQL database now created. We will begin to practice our SQL skills. 

To initially create a database we use what is called a Data Definition command, known as `CREATE` statement. The diagram below shows the various SQL commands and their categorization within the SQL language.

<img src="./images/sql-commands.png">


### The `CREATE TABLE` Statement
The `CREATE TABLE` statement is used for creating a new table. Here is a simple example statement. "*CREATE TABLE* is followed by the  name of the table, then opening/closing pararenthesis which contain all the fields (attributes) of the table.

``` 
CREATE TABLE my_first_table (
    first_column TEXT,
    second_column INT
); 
```

### Before we can move on, let's discuss Data Types.
What is a data type? In relational databases, data types tell us what the data requirements are for a field. From the example above you can see we are giving a data type to each field on the table. The *first_column* requires data to be stored as a data type of *TEXT* and the *second_column* must be stored as an *INT*. 

### Short list of Data Types
| Data Types  | Example usage |
| ------------- | ------------- |
| Integer  | int(2)  |
| Character varying  | varchar(50)  |
| Boolean  | bool  |
| Numeric  | decimal(2)  |
| Timestamp with time zone | timestampz  |

<br>

## Back to Carnival

Let's try creating a table for reals...Carnival has a Vehicles table that describes vehicles they have in inventory. 

``` 
CREATE TABLE Vehicles (
  vehicle_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  vin_number VARCHAR(50),
  engine_type VARCHAR(2),
  vehicle_type_id INT,
  exterior_color VARCHAR(50),
  interior_color VARCHAR(50),
  floor_price INT,
  msr_price INT,
  miles_count INT,
  year_of_car INT,
  FOREIGN KEY (vehicle_type_id) REFERENCES VehicleTypes (vehicle_type_id)
);
```

### Here are some things to note...
1. Table names are generally named in *UpperCamelCase* when there is more than one word in the name.
2. All attributes are called fields in the table, they are always snake_cased.
3. There is usually always a field for a primary key. *vehicle_id* is the primary key here. It must be explicitly defined as the primary key with *INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY*.
4. Each field has a data type associated with it.
5. There is a FOREIGN KEY! What's that? We'll get to that next!

<br>




