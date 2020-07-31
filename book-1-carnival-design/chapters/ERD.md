
# Entity Relationship Diagrams (ERD)

An Entity Relaionship Diagram (ERD) is just that...it's a diagram that represents the entities you work with (i.e. Products, Customers and Sales) and their relationships to each other. A database diagram is the technical representation of an ERD. In the diagram below we see how an ERD diagram gives us a sense about how we can organize our database. We get a glimps into how products might relate to categories, colors and sizes.  

ERD diagrams help to organize all the information about your organization's data structure.

<br>

<img src="./images/erd_diagram_ex1.png" width="600">

## Let's break down the components of an ERD.

1. **The entity** - An entity is a definable concept within a system such as, people (i.e. Customers, Sales Person), objects (i.e. Invoice, Cars), or events (i.e. Transactions). Entities are usually nouns and they are also the name given to a table. For example, there would be a Customers table with customer attributes.
1. **The relationship** - A relationship is descriptive of how entities relate to each other. For example, ONE SalesPerson may have MANY sales or ONE employee may have ONE Badge.
1. **The attributes** - Attributes are properties and characteristics of an entity such as, first_name, last_name of a Customer.

<br>
<br>

<img src="./images/erd_contents.png" width="600">

<br>
<br>

## Relationship Cardinality in databases
In database design you may hear about *maxiumum cardinality*. It refers to how relationships are defined between database data. It's about how data in one table relates to data in another table. Though there are more realtionship cardinalities let's focus on these three below.

<img src="./images/one-to-one.png" width="600">

<img src="./images/one-to-many.png" width="600">

<img src="./images/Many-to-Many.png" width="600">

<br>
<br>

It is possible to be more specific with your cardinalities. This is done using minimum cardinalities. *minimum cardinality* define the lowest possible relationship required for a relationship. For instance, it maybe required that ONE Student get assigned to 0 OR ONE Computer. The symbols you see below help describe the various relationship cardinalities. Minimum cardinality symbols sit on the inside of maximum cardinalities. Now see how the One-to-One relationship would now with a minimum included.

For more help understanding [watch this video.](https://www.youtube.com/watch?v=TwIbBoTUPHQ)

<br>

<img src="./images/one-to-one_with_zero.png" width="600">


<br>
<br>

### Below is a diagram of ERD cardinalities you can use:

<img src="./images/CardinalityGuide.png" width="600">

<br>
<br>

## Let's get ready to build our own ERD!

**Step 1:** You will need to create an account with a diagramming software. For this class we will use a cloud-based software called [Lucid Chart](https://www.lucidchart.com/). Please register an account if you have not already.


**Step 2** Read about Lucid ERD features [here](https://www.lucidchart.com/pages/examples/er-diagram-tool) and then click the button to *Make an ERD*.

**Step 3** 
Checkout the next chapter - *Team Project: Carnival Design*



## Extra Learning

Defining relationship - One-to-Many Relationships [Video](https://www.youtube.com/watch?v=V5DyvUfsboA)