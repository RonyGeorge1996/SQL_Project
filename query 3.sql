SELECT GeoID,sum(Amount) as 'Sum of Amount', AVG(Amount), sum(Boxes)
from sales 
GROUP BY GeoID;

select g.geo,sum(Amount),avg(Amount)
from sales s
join geo g on g.GeoID = s.GeoID
group by g.geo;

select pr.Category, p.Team,sum(Amount)
from sales s
join people p on p.SPID= s.SPID
join products pr on pr.PID = s.PID
group by pr.Category, p.Team
order by  pr.Category;

select pr.product, sum(Amount)
from sales s
join products pr on pr.PID = s.PID
group by pr.product 
ORDER BY sum(Amount) desc
limit 10