# Complex Joins

Provide examples on combining inner joins with some outer joins for more complex SQL to get specific data.

Pseudocode example...

```sql
-- Find reps who haven't made any sales. Include dealership.
select r.FirstName,
    r.LastName,
    d.BusinessName,
    s.Id,
    s.Total
from SalesReps r
inner join Dealerships d on s.dealershipId = d.id
left join Sales s on s.repId = r.rid
where s.Total is null
```